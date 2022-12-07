library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_MemInterface is
end tb_MemInterface;

architecture sim of tb_MemInterface is
    constant Tclk: time := 1 ns;
    constant BUS_Width: integer :=32;
    signal clk: std_logic := '0';
    signal cnt: integer;
    signal data_size: std_logic_vector(2 downto 0);
    signal maddr: std_logic_vector(BUS_Width-1 downto 0);
    signal dstore: std_logic_vector(BUS_Width-1 downto 0);
    signal dload: std_logic_vector(BUS_Width-1 downto 0);
    signal edstore: std_logic_vector(BUS_Width-1 downto 0);
    signal edload: std_logic_vector(BUS_Width-1 downto 0);
    signal emaddr: std_logic_vector(BUS_Width-1 downto 0);
    signal fileDload: std_logic_vector(BUS_Width-1 downto 0);
    signal fileEdstore: std_logic_vector(BUS_Width-1 downto 0);
    signal size: std_logic_vector(1 downto 0);
    signal bytesel: std_logic_vector(1 downto 0);
    signal un:std_logic;

begin

    MemoryInterface: entity work.MemInterface(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            Extern_Data_Store => edstore,
            Extern_Data_Load => edload,
            Extern_Mem_addr => emaddr,
            Data_Load => dload,
            Data_Store => dstore,
            Mem_addr => maddr,
            Mem_size => data_size
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- std-vector       std-vector       std-vector*   std-vector      std-vector*           integer    
-- Mem_addr |   Extern_Data_Load   |  Data_Load  | Data_Store |  Extern_Data_Store   |   Mem_size     
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorMemInterface.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable dsize: integer;
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            --********** Filling all pc_sel Addresses*******
            readdata(text_line,data,linecnt,reportval);
            maddr <= data;
            bytesel<= data(1 downto 0);
            readdata(text_line,data,linecnt,reportval);
            edload <= data;
            readdata(text_line,data,linecnt,reportval);
            fileDload <= data;
            readdata(text_line,data,linecnt,reportval);
            dstore <= data;
            readdata(text_line,data,linecnt,reportval);
            fileEdstore <= data;
            readdata(text_line,dsize,linecnt,reportval);
            data(2 downto 0) := std_logic_vector(to_unsigned(dsize,data_size'length));
            data_size <= data(2 downto 0);
            size <= data(1 downto 0);
            un <= data(2);
            cnt <= linecnt;
            
            wait for Tclk/4;
            assert (dload = fileDload)
                report "'dload' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (edstore = fileEdstore)
                report "'edstore' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (maddr = emaddr)
                report "'maddr' not match for line: " & integer'image(linecnt)
                severity warning;
            wait for 3*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
