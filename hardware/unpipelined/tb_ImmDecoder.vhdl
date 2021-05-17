library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_ImmDecoder is
end tb_ImmDecoder;

architecture sim of tb_ImmDecoder is
    constant Tclk: time := 8 fs;
    constant BUS_Width: integer :=32;
    signal clk: std_logic := '0';
    signal cnt: integer;
    signal immsel: std_logic_vector(2 downto 0);
    signal instr: std_logic_vector(31-7 downto 0);
    signal imm: std_logic_vector(BUS_Width-1 downto 0);
    signal fileimm: std_logic_vector(BUS_Width-1 downto 0);

begin

    ImmediateDecoder: entity work.ImmDecoder(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            Immediate => imm,
            Instruction => instr,
            Imm_sel => immsel
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- #    std-vector   std-vector*    integer              
-- #  Instruction  |  Immediate  |  ImmSel         
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorImmDecoder.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable sel: std_logic_vector(3 downto 0);
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            readdata(text_line,data,linecnt,reportval);
            instr <= data(31 downto 7);
            readdata(text_line,data,linecnt,reportval);
            fileimm <= data;
            readdata(text_line,sel,linecnt,reportval);
            immsel <= sel;


            cnt <= linecnt;
            
            wait for Tclk/4;
            assert (imm = fileimm)
                report "'immediate' not match for line: " & integer'image(linecnt)
                severity warning;
            wait for 3*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
