library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity ImmDecoder is
  generic(
    BUS_Width: integer:= 32
  );
  port (
    Immediate: out std_logic_vector(31 downto 0);
    Instruction: in std_logic_vector(31-7 downto 0);
    Imm_sel: in std_logic_vector(2 downto 0)
  ) ;
  
end ImmDecoder;

architecture rtl of ImmDecoder is
    constant opcodewidth: integer := 7;  
begin

    process(Instruction,Imm_sel)
    begin
        case Imm_sel is
            when IMM_ITYPE => --I-type
                Immediate(10 downto 0) <= Instruction(30-opcodewidth downto 20-opcodewidth);
                Immediate(BUS_Width-1 downto 11) <= (others => Instruction(31-opcodewidth));
            when IMM_STYPE => --S-type
                Immediate(4 downto 0) <= Instruction(11-opcodewidth downto 7-opcodewidth);
                Immediate(10 downto 5) <= Instruction(30-opcodewidth downto 25-opcodewidth);
                Immediate(BUS_Width-1 downto 11) <= (others => Instruction(31-opcodewidth));
            when IMM_BTYPE => --B-type
                Immediate(0) <= '0';
                Immediate(4 downto 1) <= Instruction(11-opcodewidth downto 8-opcodewidth);
                Immediate(10 downto 5) <= Instruction(30-opcodewidth downto 25-opcodewidth);
                Immediate(11) <= Instruction(7-opcodewidth);
                Immediate(BUS_Width-1 downto 12) <= (others => Instruction(31-opcodewidth));
            when IMM_UTYPE => --U-type
                Immediate(11 downto 0) <= (others => '0');
                Immediate(30 downto 12) <= Instruction(30-opcodewidth downto 12-opcodewidth);
                Immediate(BUS_Width-1 downto 31) <= (others => Instruction(31-opcodewidth));
            when IMM_JTYPE =>--J-type
                Immediate(0) <= '0';
                Immediate(10 downto 1) <= Instruction(30-opcodewidth downto 21-opcodewidth);
                Immediate(11) <= Instruction(20-opcodewidth);
                Immediate(19 downto 12) <= Instruction(19-opcodewidth downto 12-opcodewidth);
                Immediate(BUS_Width-1 downto 20) <= (others => Instruction(31-opcodewidth));
            when IMM_CSRTYPE =>--CSR-Imm
                Immediate(4 downto 0) <= Instruction(19-opcodewidth downto 15-opcodewidth);
                Immediate(BUS_Width-1 downto 5) <= (others => '0');
            when others => 
                Immediate <= (others => '-');
        end case;
    end process;    
end rtl; 
