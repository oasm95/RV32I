library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_BranchPredictor is
end tb_BranchPredictor;

architecture sim of tb_BranchPredictor is
    function cmpvec(vec: std_logic_vector;vecfile: std_logic_vector) return boolean is
    begin
        if (vecfile = (vecfile'range => 'X')) or (vecfile = (vecfile'range => '-')) then
            return true;
        end if;        
        return (vec = vecfile);      
    end;

    function cmplogic(vec: std_logic;vecfile: std_logic) return boolean is
    begin
        if (vecfile =  'X') or (vecfile =  '-') then
            return true;
        end if;        
        return (vec = vecfile);      
    end;

    constant Tclk: time := 8 fs;
    constant BUS_Width: integer :=32;
    signal clk: std_logic := '0';
    signal cnt: integer;
    
    signal isjal,wen,takenjmp,wasmatch: std_logic;
    signal Raddr: std_logic_vector(BUS_Width-1 downto 0);
    signal Waddr: std_logic_vector(BUS_Width-1 downto 0);
    signal Wtarget: std_logic_vector(BUS_Width-3 downto 0);
    signal Rtarget: std_logic_vector(BUS_Width-3 downto 0);
    signal FileRtarget: std_logic_vector(BUS_Width-3 downto 0);
    signal fprediction,prediction: std_logic;
    signal fmatch,match: std_logic;
   
        
begin

    BranchPredictor: entity work.BranchPredictor(rtl) 
    generic map(
        BP_SIZE_BITS => 8,
        BUS_Width => BUS_Width    
    )    
    port map (
        clk => clk,
        ISJAL => isjal,
        WEN => wen,
        TAKENJMP => takenjmp,
        WASMATCH => wasmatch,
        PCr => Raddr,
        PCw => Waddr,
        WTARGET => Wtarget,
        RTARGET => Rtarget,
        PREDICTION => prediction,
        MATCH => match
    );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
    -- Same order as portmap      
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorBP.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable logic: std_logic;
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            readdata(text_line,logic,linecnt,reportval);
            isjal <= logic;
            readdata(text_line,logic,linecnt,reportval);
            wen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            takenjmp <= logic;
            readdata(text_line,logic,linecnt,reportval);
            wasmatch <= logic;
            readdata(text_line,data,linecnt,reportval);
            Raddr <= data;
            readdata(text_line,data,linecnt,reportval);
            Waddr <= data;
            readdata(text_line,data,linecnt,reportval);
            Wtarget <= data(BUS_Width-1 downto 2);
            readdata(text_line,data,linecnt,reportval);
            FileRtarget <= data(BUS_Width-1 downto 2);
            readdata(text_line,logic,linecnt,reportval);
            fprediction <= logic;
            readdata(text_line,logic,linecnt,reportval);
            fmatch <= logic;
           
            cnt <= linecnt;
            
            wait for 2*Tclk/4;
            if (linecnt>256) then
                assert (FileRtarget = Rtarget)
                    report "'Rtarget' not match for line: " & integer'image(linecnt)
                    severity warning;
                assert (fprediction = prediction)
                    report "'prediction' not match for line: " & integer'image(linecnt)
                    severity warning;
                assert (fmatch = match)
                    report "'match' not match for line: " & integer'image(linecnt)
                    severity warning;
            end if;
            wait for 2*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
