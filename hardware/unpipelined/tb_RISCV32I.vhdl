library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_RISCV32I is
end tb_RISCV32I;

architecture sim of tb_RISCV32I is
    --Simulation
    constant Tclk: time := 8 fs;
    constant BUS_Width: integer :=32;
    
    --software
    constant Imemdepth: integer := 15279; --software size
    constant Dmemdepth: integer := 7172; --data + bss + heap size
    constant DmemOffset: integer := Imemdepth;
    constant Stacksize: integer := 2048;--size in words (4 bytes)
    constant StackPointer: integer:= (16#80000#)/4;
    constant SOFTWAREEND: std_logic_vector (BUS_Width-1 downto 0) := x"00000000";
    --constant SOFTWAREEND: std_logic_vector (BUS_Width-1 downto 0) := x"000000b8";
    constant PrintAddr: std_logic_vector (BUS_Width-1 downto 0) := x"7000BEEF";
    constant HeapOAddr: std_logic_vector (BUS_Width-1 downto 0) := x"7002BEEC";
    constant ErrorAddr: std_logic_vector (BUS_Width-1 downto 0) := x"DEADBEEC";
    constant EcallAddr: std_logic_vector (BUS_Width-1 downto 0) := x"7001BEEC";
    constant SetIRQ: std_logic_vector (BUS_Width-1 downto 0) := x"90000004";
    constant DisableIRQ: std_logic_vector (BUS_Width-1 downto 0) := x"90000000";
    
    signal maxStackUsed: integer:= Stacksize;
    signal realStackAddr: integer;
    signal realDmemAddr: integer;
    
    --hardware
    constant RESET_ADDR: std_logic_vector (BUS_Width-1 downto 0) := x"00000040";
    --constant RESET_ADDR: std_logic_vector (BUS_Width-1 downto 0) := x"00000000";
    signal cnt: integer :=0;
    signal clk: std_logic := '0';
    signal irq: std_logic:='0';
    signal imem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal imem_data: std_logic_vector(31 downto 0);
    signal dmem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal dmem_data_l: std_logic_vector(BUS_Width-1 downto 0);
    signal dmem_data_s: std_logic_vector(BUS_Width-1 downto 0);
    signal dmemwen: std_logic;
    --mem types
    type Imem_type is array (0 to Imemdepth-1) of std_logic_vector(31 downto 0);
    type Dmem_type is array (0 to Dmemdepth-1) of std_logic_vector(BUS_Width-1 downto 0);
    type StackMem is array (0 to Stacksize) of std_logic_vector(BUS_Width-1 downto 0);
    
    impure function fillImem return Imem_type is
        file text_file : text open read_mode is "programText.txt";
        variable text_line: line;
        variable data: Imem_type;
    begin
        for i in Imem_type'range loop
            readline(text_file, text_line);
            readdata(text_line,data(i));        
        end loop;
        return data;
    end;
    
    impure function fillDmem return Dmem_type is
        file text_file : text open read_mode is "programData.txt";
        variable text_line: line;
        variable data: Dmem_type;
    begin
        for i in Dmem_type'range loop
            readline(text_file, text_line);
            readdata(text_line,data(i));        
        end loop;
        return data;
    end;
        
    constant Imem: Imem_type := fillImem;
    signal Dmem: Dmem_type := fillDmem;
    signal Stackm: StackMem := (others => (others => '0'));

begin

    RISCV32I: entity work.RISCV32I(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map (
            CLK => clk,
            IRQ => irq,
            IMEM_ADDR => imem_addr,
            IMEM_DATA => imem_data,
            DMEM_ADDR => dmem_addr,
            DMEM_DATA_L => dmem_data_l,
            DMEM_DATA_S => dmem_data_s,
            DMEM_WEN => dmemwen
        );
 

    imem_data <=Imem(to_integer(unsigned(imem_addr(BUS_Width-1 downto 2))));
    
    assert (IMEM_ADDR /= SOFTWAREEND)
        report "Simulation Finished,Software completed in: " & integer'image(cnt) &
        " cycles Stack Usage(word): " & integer'image(Stacksize - maxStackUsed)
    severity failure;
    
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
    
    cycleCnt: process(clk)
    begin
        if (rising_edge(clk)) then
            cnt <= cnt + 1;
            if cnt rem 50000 = 0 then
                report "cycle = " & integer'image(cnt);
            end if;      
        end if;
    end process;
    
    
    MemControl:process(clk)
        variable realaddr: integer;
        variable realaddrstack: integer;
        variable addr: std_logic_vector(BUS_Width-1-2 downto 0);
    begin
        addr:= dmem_addr(BUS_Width-1 downto 2);
        
        realaddr:= to_integer(unsigned(addr)) - DmemOffset;
        realaddrstack:= to_integer(unsigned(addr)) - StackPointer+Stacksize;
        
        --report "stack addr: " & integer'image(realaddrstack);        
        realStackAddr <= -1;
        realDmemAddr <= -1;
        if realaddr <= Dmem'high and realaddr >= 0 then
            realDmemAddr <= realaddr;
            dmem_data_l <= Dmem(realaddr);
            if rising_edge(clk) then
                if dmemwen = '1' then
                    Dmem(realaddr) <= dmem_data_s;
                end if;            
            end if;  
        end if;
        
        if realaddrstack <= Stackm'high and realaddrstack >= 0 then
            realStackAddr <= realaddrstack;
            dmem_data_l <= Stackm(realaddrstack);
            if rising_edge(clk) then
                if dmemwen = '1' then
                    Stackm(realaddrstack) <= dmem_data_s;
                end if;            
            end if;
            
            if realaddrstack < maxStackUsed then
                maxStackUsed <= realaddrstack;
            end if;
        end if;
    end process;
    
    
    outputfromRISCV:process(clk)
        file printoutput: text open write_mode is "stdout.txt";
        variable txt : line;
        variable int: integer;
        variable chr: character;
    begin
        if rising_edge(clk) then
            if dmemwen = '1' then
                case dmem_addr is
                    when PrintAddr =>
                        int := to_integer(unsigned(dmem_data_s(31 downto 24)));
                        chr:=character'val(int);                        
                        if chr = lf then
                            writeline(printoutput,txt);
                        else
                            write(txt,chr);
                        end if;
                    when ErrorAddr =>
                        int := to_integer(unsigned(dmem_data_s));
                        report "Exception Cause: " & integer'image(int);
                    when EcallAddr =>
                        int := to_integer(unsigned(dmem_data_s));
                        report  "SYSCALL: " & integer'image(int);
                    when HeapOAddr =>
                        int := to_integer(unsigned(dmem_data_s));
                        report  "Heap Overflow By: " & integer'image(int) & " bytes";
                    when others => NULL;        
                end case;
            end if;
        end if;
    end process;
    
    IRQcontrol:process(clk)
    begin
        if rising_edge(clk) then
            if dmemwen = '1' then
                case dmem_addr is
                    when DisableIRQ =>
                        irq <= '0';
                        report "Se detecto y manejo Interrupcion";
                    when SetIRQ =>
                        irq <= '1';
                        report "Se genero Interrupcion";
                    when others => NULL;        
                end case;
            end if;
        end if;
    end process;  
end sim; 
