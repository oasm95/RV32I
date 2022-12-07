library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_PC is
end tb_PC;

architecture sim of tb_PC is
    constant Tclk: time := 1 ns;
    constant BUS_Width: integer :=32;
    signal cnt: integer;
    signal stall,clk: std_logic := '0';
    signal currentpc: std_logic_vector(BUS_Width-1 downto 0);
    signal nextpc: std_logic_vector(BUS_Width-1 downto 0);
    signal jumptarget: std_logic_vector(BUS_Width-1 downto 0);
    signal jalr: std_logic_vector(BUS_Width-1 downto 0);
    signal expt: std_logic_vector(BUS_Width-1 downto 0);
    signal filecurrent: std_logic_vector(BUS_Width-1 downto 0);
    signal filenext: std_logic_vector(BUS_Width-1 downto 0);
    signal pc_sel: std_logic_vector(1 downto 0);
begin

    ProgramCounter: entity work.ProgramCounter(rtl)
        generic map(RESET_ADDR=> x"00000020",BUS_Width=>32)
        port map(
            clk => clk,
            Current_addr => currentpc,
            Next_addr => nextpc,
            Jumps => jumptarget,
            Except_addr => expt,
            JALR => jalr,
            PC_sel => pc_sel,
            Stall => stall
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- std-vector  std-vector  std-vector  std-vector  std-vector   integer    std_logic
-- jumptarget |   jalr   |    expt   | currentpc |  nextpc   |   pc_sel   |   stall    
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorPC.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable addr: std_logic_vector(31 downto 0);
        variable pcsel: integer;
        variable stll: std_logic;
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            --********** Filling all pc_sel Addresses*******
            readdata(text_line,addr,linecnt,reportval);
            jumptarget <= addr;
            readdata(text_line,addr,linecnt,reportval);
            jalr <= addr;
            readdata(text_line,addr,linecnt,reportval);
            expt <= addr;
            readdata(text_line,addr,linecnt,reportval);
            filecurrent <= addr;
            readdata(text_line,addr,linecnt,reportval);
            filenext <= addr;
            readdata(text_line,pcsel,linecnt,reportval);
            pc_sel <= std_logic_vector(to_unsigned(pcsel,pc_sel'length));
            readdata(text_line,stll,linecnt,reportval);
            stall <= stll;
            
            wait for Tclk/4;
            assert (currentpc = filecurrent)
                report "'currentpc' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (nextpc = filenext)
                report "'nextpc' not match for line: " & integer'image(linecnt)
                severity warning;
            wait for 3*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
