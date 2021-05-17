library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_ControlUnit_pp is
end tb_ControlUnit_pp;

architecture sim of tb_ControlUnit_pp is
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
    signal idopcode: std_logic_vector(6 downto 0);
    signal aluopcode: std_logic_vector(6 downto 0);
    signal memopcode: std_logic_vector(6 downto 0);
    signal wbopcode: std_logic_vector(6 downto 0);
    signal idfunct3: std_logic_vector(2 downto 0);
    signal alufunct3: std_logic_vector(2 downto 0);
    signal memfunct3: std_logic_vector(2 downto 0);
    signal wbfunct3: std_logic_vector(2 downto 0);
    signal idfunct7: std_logic_vector(3 downto 0);
    signal alufunct7: std_logic_vector(3 downto 0);
    signal memfunct7: std_logic_vector(3 downto 0);
    signal trap,wbtrap:  std_logic;
    signal pcsel: std_logic_vector(1 downto 0);
    signal Fpcsel: std_logic_vector(1 downto 0);
    signal asel: std_logic_vector(1 downto 0);
    signal Fasel: std_logic_vector(1 downto 0);
    signal bsel: std_logic_vector(1 downto 0);
    signal Fbsel: std_logic_vector(1 downto 0);
    signal wbsel: std_logic_vector(1 downto 0);
    signal Fwbsel: std_logic_vector(1 downto 0);
    signal immsel: std_logic_vector(2 downto 0);
    signal Fimmsel: std_logic_vector(2 downto 0);
    signal alusel: std_logic_vector(3 downto 0);
    signal Falusel: std_logic_vector(3 downto 0);
    signal regfileWen,memWen,csrWen,trapWen: std_logic;
    signal mret,ecall,ebreak,illop: std_logic;
    signal FregfileWen,FmemWen,FcsrWen,FtrapWen: std_logic;
    signal Fmret,Fecall,Febreak,Fillop: std_logic;
        
begin

    ControlUnit: entity work.ControlUnit(rtl) 
        port map (
            PC_Sel => pcsel,
            A_Sel => asel,
            B_Sel => bsel,
            Imm_Sel=> immsel,
            WB_Sel=> wbsel,
            ALU_Sel=> alusel,
            RegFile_Wen=> regfileWen,
            DMem_Wen=> memWen,
            CSRFile_Wen=> csrWen,
            CSRFile_Trap_Wen=> trapWen,
            MRet=> mret,
            ECall=> ecall,
            EBreak=> ebreak,
            Ill_op=> illop,
            Trap => trap, 
            WBTrap => wbtrap,
            ID_OPCODE => idopcode,
            ID_FUNCT3 => idfunct3,
            ID_FUNCT7 => idfunct7,
            ALU_OPCODE => aluopcode,
            ALU_FUNCT3 => alufunct3,
            ALU_FUNCT7 => alufunct7,
            MEM_OPCODE => memopcode,
            MEM_FUNCT3 => memfunct3,
            MEM_FUNCT7 => memfunct7,
            WB_OPCODE => wbopcode,
            WB_FUNCT3 => wbfunct3
        );
        
    process is
    begin
        wait for Tclk/2;
        clk <= not clk;
    end process;
-- #    std-vector    logic      logic       logic       std-vector   std-vector   std-vector   std-vector
-- #  Instruction  |    Z   |   Trap    |   CondTrue   |    PCSel*   |   ASel*    |   BSel*    |   ImmSel*   |... Same order as portmap      
    Stimulous_fromfile:process is
        file text_file : text open read_mode is "testvectorControlUnit.txt";
        variable reportval: boolean:= false;
        variable text_line : line;
        variable linecnt: integer :=0;
        variable data: std_logic_vector(BUS_Width-1 downto 0);
        variable data4: std_logic_vector(3 downto 0);
        variable logic: std_logic;
    begin
        
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            readdata(text_line,data,linecnt,reportval);
            idopcode <= data(6 downto 0);
            idfunct3 <= data(14 downto 12);
            idfunct7 <= data(30 downto 29) & data(21 downto 20);
            aluopcode <= data(6 downto 0);
            alufunct3 <= data(14 downto 12);
            alufunct7 <= data(30 downto 29) & data(21 downto 20);
            memopcode <= data(6 downto 0);
            memfunct3 <= data(14 downto 12);
            memfunct7 <= data(30 downto 29) & data(21 downto 20);
            wbopcode <= data(6 downto 0);
            wbfunct3 <= data(14 downto 12);
            readdata(text_line,logic,linecnt,reportval);
            trap <= logic;
            wbtrap <= logic;
            readdata(text_line,data4,linecnt,reportval);
            Fpcsel <= data4(Fpcsel'range);
            readdata(text_line,data4,linecnt,reportval);
            Fasel <= data4(Fasel'range);
            readdata(text_line,data4,linecnt,reportval);
            Fbsel <= data4(Fbsel'range);
            readdata(text_line,data4,linecnt,reportval);
            Fimmsel <= data4(Fimmsel'range);
            readdata(text_line,data4,linecnt,reportval);
            Fwbsel <= data4(Fwbsel'range);
            readdata(text_line,data4,linecnt,reportval);
            Falusel <= data4(Falusel'range);
            readdata(text_line,logic,linecnt,reportval);
            FregfileWen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            FmemWen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            FcsrWen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            FtrapWen <= logic;
            readdata(text_line,logic,linecnt,reportval);
            Fmret <= logic;
            readdata(text_line,logic,linecnt,reportval);
            ecall <= logic;
            readdata(text_line,logic,linecnt,reportval);
            Febreak <= logic;
            readdata(text_line,logic,linecnt,reportval);
            Fillop <= logic;          

            cnt <= linecnt;

            
            wait for 2*Tclk/4;
            assert (cmpvec(pcsel,Fpcsel))
                report "'pcsel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmpvec(asel,Fasel))
                report "'asel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmpvec(bsel,Fbsel))
                report "'bsel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all
                severity warning;
            assert (cmpvec(wbsel,Fwbsel))
                report "'wbsel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmpvec(immsel,Fimmsel))
                report "'immsel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all
                severity warning;
            assert (cmpvec(alusel,Falusel))
                report "'alusel' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;

            assert (cmplogic(regfileWen,FregfileWen))
                report "'regfileWen' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all
                severity warning;
            assert (cmplogic(memWen,FmemWen))
                report "'memWen' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmplogic(csrWen,FcsrWen))
                report "'csrWen' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmplogic(trapWen,FtrapWen))
                report "'trapWen' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all
                severity warning;
            assert (cmplogic(mret,Fmret))
                report "'mret' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmplogic(ebreak,Febreak))
                report "'ebreak' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            assert (cmplogic(illop,Fillop))
                report "'illop' not match for line: " & integer'image(linecnt) &" instruction: " & text_line.all 
                severity warning;
            wait for 2*Tclk/4;
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
    

    
end sim; 
