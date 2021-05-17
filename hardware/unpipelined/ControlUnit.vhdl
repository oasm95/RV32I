library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity ControlUnit is
  port (
    PC_Sel:out std_logic_vector(1 downto 0);
    A_Sel: out std_logic_vector(1 downto 0);
    B_Sel: out std_logic_vector(1 downto 0);
    WB_Sel: out std_logic_vector(1 downto 0);
    Imm_Sel: out std_logic_vector(2 downto 0);
    ALU_Sel: out std_logic_vector(3 downto 0);
    RegFile_Wen: out std_logic;
    DMem_Wen: out std_logic;
    CSRFile_Wen: out std_logic;
    CSRFile_Trap_Wen: out std_logic;
    MRet: out std_logic;
    ECall: out std_logic;
    EBreak: out std_logic;
    Ill_op: out std_logic;
    Z: in std_logic;
    Trap: in std_logic;
    CondTrue: in std_logic;
    OPCODE: in std_logic_vector(6 downto 0);
    FUNCT3: in std_logic_vector(2 downto 0);
    FUNCT7: in std_logic_vector(3 downto 0)
  ) ;
end ControlUnit;

architecture rtl of ControlUnit is
    function isnotzero(vec: std_logic_vector) return std_logic is
        variable result: std_logic :='0';
    begin
        for i in vec'range loop
            result:= result or vec(i);
        end loop;
        return result;
    end;
begin
    
    Control: process(OPCODE,FUNCT3,FUNCT7,CondTrue,Z,Trap)
    variable takebranch: std_logic;
    variable branchsel: std_logic_vector(1 downto 0);
    variable iscsr: std_logic;
    begin
        iscsr := isnotzero(FUNCT3);
        case OPCODE is
            when OPCODE_LUI =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= (others => '-');
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_UTYPE;
                WB_Sel <= WBSEL_ALU;
                ALU_Sel <= ALU_B;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';
            
            when OPCODE_AUIPC =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= ASEL_PC;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_UTYPE;
                WB_Sel <= WBSEL_ALU;
                ALU_Sel <= ALU_ADD;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';
            
            when OPCODE_JAL =>
                PC_Sel <= PC_JMP;
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                Imm_Sel <= IMM_JTYPE;
                WB_Sel <= WBSEL_NXTPC;
                ALU_Sel <= (others => '-');
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';
            
            when OPCODE_JALR =>
                PC_Sel <= PC_JALR;
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                WB_Sel <= WBSEL_NXTPC;
                ALU_Sel <= ALU_ADD;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';
            
            when OPCODE_BRANCH =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_RS2;
                Imm_Sel <= IMM_BTYPE;
                WB_Sel <= (others => '-');
                RegFile_Wen <= '0';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';                
                 -- the two highest bits of funct3 for Brach, correspond to the lower two bits of the funct3 for OP/OP-IMM
                 -- needed to do the operation, sub, slt and sltu, adding "10" to the two highest bits of funct3 of Brach  
                 -- selects the correct alu op for the respectibely cmp, then in alu "1" & funct3(slt), "0" & funct3(slt) are
                 -- both valid select operands for slt, same for sltu
                ALU_Sel <= "10" & FUNCT3(2 downto 1);
                
                branchsel := FUNCT3(2) & FUNCT3(0);
                
                case branchsel is
                    when "00" => -- BEQ
                        takebranch := Z;
                    when "01" => -- BNE
                        takebranch := not Z;
                    when "10" => -- BLTX
                        takebranch := CondTrue;
                    when "11" => -- BGEX
                        takebranch := not CondTrue;
                    when others => NULL;
                end case;
                
                case takebranch is
                    when '1'=> PC_Sel <= PC_JMP;
                    when '0'=> PC_Sel <= PC_NEXTPC;
                    when others=> NULL;
                end case;
            
            when OPCODE_LOAD =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                WB_Sel <= WBSEL_MEM;
                ALU_Sel <= ALU_ADD;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';           
            when OPCODE_STORE =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_STYPE;
                WB_Sel <= (others => '-');
                ALU_Sel <= ALU_ADD;
                RegFile_Wen <= '0';
                DMem_Wen <= '1';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-'; 
                
            when OPCODE_OP_IMM =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                WB_Sel <= WBSEL_ALU;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-'; 
                
                if FUNCT3 = ALU_SRL(2 downto 0) then
                    ALU_Sel <= FUNCT7(FUNCT7'high) & FUNCT3;
                else
                    ALU_Sel <= '0' & FUNCT3;
                end if;
            
            when OPCODE_OP =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_RS2;
                Imm_Sel <= (others => '-');
                WB_Sel <= WBSEL_ALU;
                ALU_Sel <= FUNCT7(FUNCT7'high) & FUNCT3;
                RegFile_Wen <= '1';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-'; 

            when OPCODE_MISC_MEM =>
                PC_Sel <= PC_NEXTPC;
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                WB_Sel <= (others => '-');
                Imm_Sel <= (others => '-');
                ALU_Sel <= (others => '-');
                RegFile_Wen <= '0';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                ECall <= '-';
                EBreak <= '-';
                Ill_op <= '-';            
            when OPCODE_SYSTEM =>                
                Imm_Sel <= IMM_CSRTYPE;
                WB_Sel <= WBSEL_CSR;
                DMem_Wen <= '0';
                
                if FUNCT3(2) = '1' then --Select CSRXXI or CSRXX
                    A_Sel <= ASEL_CSR;
                    B_Sel <= BSEL_IMM;
                else
                    A_Sel <= ASEL_RS1;
                    B_Sel <= BSEL_CSR;
                end if;
                
                case FUNCT3(1 downto 0) is
                    when "01" =>
                        ALU_Sel <= ALU_A or "00"&FUNCT3(2)&'0';--Select ALU_A or ALU_B 
                    when "10" =>
                        ALU_Sel <= ALU_OR;
                    when "11" =>
                        ALU_Sel <= ALU_CLEAR;
                    when others=>
                        ALU_Sel <= (others => '-');
                end case;
                
                case iscsr is
                    when '1' =>
                        PC_Sel <= PC_NEXTPC;
                        RegFile_Wen <= '1';
                        CSRFile_Wen <= '1'; 
                        CSRFile_Trap_Wen <= '0';
                        MRet <= '0';
                        ECall <= '-';
                        EBreak <= '-';
                        Ill_op <= '-';
                        
                    when '0' =>
                        PC_Sel <= PC_TRAP;
                        RegFile_Wen <= '0';
                        CSRFile_Wen <= '0'; 
                        MRet <= '0';
                        ECall <= '0';
                        EBreak <= '0';
                        Ill_op <= '0';
                        CSRFile_Trap_Wen <= '1';
                    
                        case FUNCT7(2 downto 0) is
                            when "000" =>
                                ECall <= '1';
                            when "001" =>
                                EBreak <= '1';
                            when "110" =>
                                MRet <= '1';
                                CSRFile_Trap_Wen <= '0';
                            when others=>
                                Ill_op <= '1';
                        end case;
                    when others => NULL;
                end case;

            when others =>
                PC_Sel <= PC_TRAP;
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                WB_Sel <= (others => '-');
                Imm_Sel <= (others => '-');
                ALU_Sel <= (others => '-');
                RegFile_Wen <= '0';
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '1';
                MRet <= '0';
                ECall <= '0';
                EBreak <= '0';
                Ill_op <= '1';
        end case;   
        
        if Trap = '1' then
            PC_Sel <= PC_TRAP;
            --A_Sel <= (others => '-');
            --B_Sel <= (others => '-');
            --WB_Sel <= (others => '-');
            --Imm_Sel <= (others => '-');
            --ALU_Sel <= (others => '-');
            RegFile_Wen <= '0';
            DMem_Wen <= '0';
            CSRFile_Wen <= '0';
            CSRFile_Trap_Wen <= '1';
            MRet <= '0';
            ECall <= '0';
            EBreak <= '0';
            Ill_op <= '0';
        end if;
        
    end process;


end rtl; 
