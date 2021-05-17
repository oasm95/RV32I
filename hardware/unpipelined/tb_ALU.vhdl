library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_ALU is
end tb_ALU;

architecture sim of tb_ALU is
    constant Tclk: time := 1 ns;
    constant BUS_Width: integer :=32;
    signal clk: std_logic := '0';
    signal cnt: integer;
    signal funsel : std_logic_vector(3 downto 0);
    signal a: std_logic_vector(BUS_Width-1 downto 0);
    signal b: std_logic_vector(BUS_Width-1 downto 0);
    signal c: std_logic_vector(BUS_Width-1 downto 0);
    signal filec: std_logic_vector(BUS_Width-1 downto 0);
    signal z, condT,misalW,misalHW: std_logic;
    signal filez, fileconT,filemisalW,filemisalHW: std_logic;

begin

    ALU: entity work.ALU(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            A => a,
            B => b,
            C => c,
            FunSel => funsel,
            Z => z,
            CondTrue => condT,
            MisalignedW => misalW,
            MisalignedHW => misalHW
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- std-vector   std-vector   std-vector*  std-vector    logic*      logic*       logic*       logic*              
--      A    |      B      |     C      |   Funsel  |     Z     |  CondTrue | MisalignedW | MisalignedHW     
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorALU.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable fun: std_logic_vector(3 downto 0);
        variable flag: std_logic;
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            --********** Filling all pc_sel Addresses*******
            readdata(text_line,data,linecnt,reportval);
            a <= data;
            readdata(text_line,data,linecnt,reportval);
            b <= data;
            readdata(text_line,data,linecnt,reportval);
            filec <= data;
            readdata(text_line,fun,linecnt,reportval);
            funsel <= fun;
            readdata(text_line,flag,linecnt,reportval);
            filez <= flag;
            readdata(text_line,flag,linecnt,reportval);
            fileconT <= flag;
            readdata(text_line,flag,linecnt,reportval);
            filemisalW <= flag;
            readdata(text_line,flag,linecnt,reportval);
            filemisalHW <= flag;


            cnt <= linecnt;
            
            wait for Tclk/4;
            assert (c = filec)
                report "'c' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (z = filez)
                report "'z' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (condT = fileconT)
                report "'condT' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (misalHW = filemisalHW)
                report "'misalHW' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (misalW = filemisalW)
                report "'misalW' not match for line: " & integer'image(linecnt)
                severity warning;
            wait for 3*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
