library ieee;
use ieee.std_logic_1164.all;

--use work.rv32iconstants.all;

package rv32iconstants is

 --OPCODE
    constant OPCODE_LOAD: std_logic_vector(6 downto 0) := "0000011";
    constant OPCODE_STORE: std_logic_vector(6 downto 0) := "0100011";
    constant OPCODE_BRANCH: std_logic_vector(6 downto 0) := "1100011";
    constant OPCODE_JALR: std_logic_vector(6 downto 0) := "1100111";
    constant OPCODE_JAL: std_logic_vector(6 downto 0) := "1101111";
    constant OPCODE_OP_IMM: std_logic_vector(6 downto 0) := "0010011";
    constant OPCODE_AUIPC: std_logic_vector(6 downto 0) := "0010111";
    constant OPCODE_OP: std_logic_vector(6 downto 0) := "0110011";
    constant OPCODE_LUI: std_logic_vector(6 downto 0) := "0110111";
    constant OPCODE_SYSTEM: std_logic_vector(6 downto 0) := "1110011";
    constant OPCODE_MISC_MEM: std_logic_vector(6 downto 0) := "0001111";
 --DataPath
    constant WBSEL_ALU : std_logic_vector(1 downto 0) := "00";
    constant WBSEL_MEM : std_logic_vector(1 downto 0) := "01";
    constant WBSEL_CSR : std_logic_vector(1 downto 0) := "11";
    constant WBSEL_NXTPC : std_logic_vector(1 downto 0) := "10";
    constant ASEL_RS1 : std_logic_vector(1 downto 0) := "00";
    constant ASEL_CSR : std_logic_vector(1 downto 0) := "10";
    constant ASEL_PC : std_logic_vector(1 downto 0) := "01";
    constant BSEL_RS2 : std_logic_vector(1 downto 0) := "00";
    constant BSEL_IMM : std_logic_vector(1 downto 0) := "01";
    constant BSEL_CSR: std_logic_vector(1 downto 0) := "10";
    --Exceptions
    constant CAUSE_MEI: std_logic_vector(3 downto 0) := x"B";
    constant CAUSE_EBREAK: std_logic_vector(3 downto 0) := x"3";
    constant CAUSE_ECALL: std_logic_vector(3 downto 0) := x"B";
    constant CAUSE_LMISA: std_logic_vector(3 downto 0) := x"4";
    constant CAUSE_SMISA: std_logic_vector(3 downto 0) := x"6";
    constant CAUSE_IMISA: std_logic_vector(3 downto 0) := x"0";
    constant CAUSE_ILLOP: std_logic_vector(3 downto 0) := x"2";
--ALU
    constant ALU_ADD: std_logic_vector(3 downto 0) := x"0";
    constant ALU_SUB: std_logic_vector(3 downto 0) := x"8";
    constant ALU_SLL: std_logic_vector(3 downto 0) := x"1";
    constant ALU_SLT: std_logic_vector(3 downto 0) := x"2";
    constant ALU_SLTU: std_logic_vector(3 downto 0) := x"3";
    constant ALU_XOR: std_logic_vector(3 downto 0) := x"4";
    constant ALU_SRL: std_logic_vector(3 downto 0) := x"5";
    constant ALU_SRA: std_logic_vector(3 downto 0) := x"D";
    constant ALU_OR: std_logic_vector(3 downto 0) := x"6";
    constant ALU_AND: std_logic_vector(3 downto 0) := x"7";
    constant ALU_CLEAR: std_logic_vector(3 downto 0) := x"F";
    constant ALU_A : std_logic_vector(3 downto 0) := x"C";
    constant ALU_B : std_logic_vector(3 downto 0) := x"E";
--IMMEDIATES
    constant IMM_ITYPE: std_logic_vector(2 downto 0) := "000";
    constant IMM_STYPE: std_logic_vector(2 downto 0) := "001";
    constant IMM_BTYPE: std_logic_vector(2 downto 0) := "010";
    constant IMM_UTYPE: std_logic_vector(2 downto 0) := "011";
    constant IMM_JTYPE: std_logic_vector(2 downto 0) := "100";
    constant IMM_CSRTYPE: std_logic_vector(2 downto 0) := "101";
--PC
    constant PC_NEXTPC: std_logic_vector(1 downto 0) := "00";
    constant PC_JMP: std_logic_vector(1 downto 0) := "01";
    constant PC_JALR: std_logic_vector(1 downto 0) := "10";
    constant PC_TRAP: std_logic_vector(1 downto 0) := "11";
--Instr
    constant NOP: std_logic_vector(31 downto 0) := x"00000013";
end package rv32iconstants;
package body rv32iconstants is

end package body rv32iconstants;
