library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_CSRFile is
end tb_CSRFile;

architecture sim of tb_CSRFile is
    constant Tclk: time := 8 fs;
    constant BUS_Width: integer :=32;
    signal cnt: integer;
    signal clk: std_logic := '0';
    signal csraddr: std_logic_vector(11 downto 0); 
    signal csrdata: std_logic_vector(BUS_Width-1 downto 0);
    signal csrwdata: std_logic_vector(BUS_Width-1 downto 0);
    signal csrpc: std_logic_vector(BUS_Width-1 downto 0);
    signal csrmepc: std_logic_vector(BUS_Width-1 downto 0);
    signal filecsrdata: std_logic_vector(BUS_Width-1 downto 0);
    signal filecsrpc: std_logic_vector(BUS_Width-1 downto 0);
    signal csrcause: std_logic_vector(3 downto 0);
    signal irq,csrtrap_wen,csr_wen,Eirq,mret: std_logic;
    signal fileirq: std_logic;

begin

    CSR: entity work.CSRFile(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            clk => clk,
            Extern_IRQ => Eirq,
            CSR_IRQ => irq,
            CSR_PCaddr => csrpc,
            CSR_data => csrdata,
            CSR_mepc => csrmepc,
            CSR_Wdata => csrwdata,
            CSR_mcause => csrcause,
            CSR_addr => csraddr,
            CSR_Wen => csr_wen,
            CSR_Wen_traps => csrtrap_wen,
            CSR_Ret => mret
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- # 1 std-vector  std-vector   std-vector*     std-vector*  std-vector(12)  std-vector(4)     
-- # 1 CSRWdata |    MEPC     |    CSRdata *  |    OUTPC *   |  CSRaddr   |   CSRcause      

-- # 2 logic   logic         logic    logic     logic         
-- # 2 Eirq |   Mret   |  Trap_Wen  |   Wen  |  irq *      
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorCSRFile.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable addr: std_logic_vector(11 downto 0);
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable cause: std_logic_vector(3 downto 0);
        variable logic: std_logic;
    begin
        --wait until clk = '1';
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            --********** Filling all pc_sel Addresses*******
            readdata(text_line,data,linecnt,reportval);
            csrwdata <= data;
            readdata(text_line,data,linecnt,reportval);
            csrmepc <= data;
            readdata(text_line,data,linecnt,reportval);
            filecsrdata <= data;
            readdata(text_line,data,linecnt,reportval);
            filecsrpc <= data;
            readdata(text_line,addr,linecnt,reportval);
            csraddr <= addr;
            readdata(text_line,cause,linecnt,reportval);
            csrcause <= cause;
            readdata(text_line,logic,linecnt,reportval);
            Eirq <= logic;
            readdata(text_line,logic,linecnt,reportval);
            mret <= logic;
            readdata(text_line,logic,linecnt,reportval);
            csrtrap_wen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            csr_wen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            fileirq <= logic;
            
            cnt<= linecnt;
            wait for Tclk/4;
            if linecnt > 7 then
                assert (irq = fileirq)
                    report "'irq' not match for line: " & integer'image(linecnt)
                    severity warning;
                assert (csrdata = filecsrdata)
                    report "'csrdata' not match for line: " & integer'image(linecnt)
                    severity warning;
                assert (csrpc = filecsrpc)
                    report "'csrpc' not match for line: " & integer'image(linecnt)
                    severity warning;
            end if;
            wait for 3*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
