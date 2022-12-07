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
    Trap: in std_logic;
    WBTrap: in std_logic;
    ID_OPCODE: in std_logic_vector(6 downto 0);
    ID_FUNCT3: in std_logic_vector(2 downto 0);
    ID_FUNCT7: in std_logic_vector(3 downto 0);
    ALU_OPCODE: in std_logic_vector(6 downto 0);
    ALU_FUNCT3: in std_logic_vector(2 downto 0);
    ALU_FUNCT7: in std_logic_vector(3 downto 0);
    MEM_OPCODE: in std_logic_vector(6 downto 0);
    MEM_FUNCT3: in std_logic_vector(2 downto 0);
    MEM_FUNCT7: in std_logic_vector(3 downto 0);
    WB_OPCODE: in std_logic_vector(6 downto 0);
    WB_FUNCT3: in std_logic_vector(2 downto 0)    
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
    
    InstructionDecode: process(ID_OPCODE,ID_FUNCT3,ID_FUNCT7)
        variable iscsr: std_logic;
    begin
        iscsr := isnotzero(ID_FUNCT3);
        case ID_OPCODE is
            when OPCODE_LUI =>
                A_Sel <= (others => '-');
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_UTYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= ALU_B;
            
            when OPCODE_AUIPC =>
                A_Sel <= ASEL_PC;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_UTYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= ALU_ADD;
            
            
            when OPCODE_JAL =>
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                Imm_Sel <= IMM_JTYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= (others => '-');
            
            when OPCODE_JALR =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= ALU_ADD;
            
            when OPCODE_BRANCH =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_RS2;
                Imm_Sel <= IMM_BTYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                 -- the two highest bits of funct3 for Brach, correspond to the lower two bits of the funct3 for OP/OP-IMM
                 -- needed to do the operation, sub, slt and sltu, adding "10" to the two highest bits of funct3 of Brach  
                 -- selects the correct alu op for the respectibely cmp, then in alu "1" & funct3(slt), "0" & funct3(slt) are
                 -- both valid select operands for slt, same for sltu
                ALU_Sel <= "10" & ID_FUNCT3(2 downto 1);
                           
            when OPCODE_LOAD =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= ALU_ADD;
                
            when OPCODE_STORE =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_STYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                
            when OPCODE_OP_IMM =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_IMM;
                Imm_Sel <= IMM_ITYPE;
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                if ID_FUNCT3 = ALU_SRL(2 downto 0) then
                    --this bit is high when instruction is SRLI, conveniently EQ to the ALU multiplexer
                    ALU_Sel <= ID_FUNCT7(ID_FUNCT7'high) & ID_FUNCT3;
                else
                    ALU_Sel <= '0' & ID_FUNCT3;
                end if;
            
            when OPCODE_OP =>
                A_Sel <= ASEL_RS1;
                B_Sel <= BSEL_RS2;
                Imm_Sel <= (others => '-');
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= ID_FUNCT7(ID_FUNCT7'high) & ID_FUNCT3;

            when OPCODE_MISC_MEM =>
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                Imm_Sel <= (others => '-');
                Ill_op <= '0';
                ECall <= '0';
                EBreak <= '0';
                ALU_Sel <= (others => '-');
                
            when OPCODE_SYSTEM =>                
                Imm_Sel <= IMM_CSRTYPE;      
                
                if ID_FUNCT3(2) = '1' then --Select CSRXXI or CSRXX
                    A_Sel <= ASEL_CSR;
                    B_Sel <= BSEL_IMM;
                else
                    A_Sel <= ASEL_RS1;
                    B_Sel <= BSEL_CSR;
                end if;
                
                case ID_FUNCT3(1 downto 0) is
                    when "01" =>
                        ALU_Sel <= ALU_A or "00"&ID_FUNCT3(2)&'0';--Select ALU_A or ALU_B 
                    when "10" =>
                        ALU_Sel <= ALU_OR;
                    when "11" =>
                        ALU_Sel <= ALU_CLEAR;
                    when others=>
                        ALU_Sel <= (others => '-');
                end case;
                            
                ECall <= '0';
                EBreak <= '0';
                Ill_op <= '0'; 
                
                if iscsr = '0' then                 
                    case ID_FUNCT7(2 downto 0) is
                        when "000" => ECall <= '1';
                        when "001" => EBreak <= '1';
                        when "110" => Ill_op <= '0';
                        when others=> Ill_op <= '1';
                    end case;
                end if;

            when others =>
                A_Sel <= (others => '-');
                B_Sel <= (others => '-');
                Imm_Sel <= (others => '-');
                ECall <= '0';
                EBreak <= '0';
                Ill_op <= '1';
                ALU_Sel <= (others => '-');
        end case;
    end process;
    
    EXECUTE_ALU: process(ALU_OPCODE,ALU_FUNCT3,ALU_FUNCT7)
    begin
        case ALU_OPCODE is
            when OPCODE_LUI =>
                PC_Sel <= PC_NEXTPC;
                           
            when OPCODE_AUIPC =>
                PC_Sel <= PC_NEXTPC;

            when OPCODE_JAL =>
                PC_Sel <= PC_JMP;
            
            when OPCODE_JALR =>
                PC_Sel <= PC_JALR;
                
            when OPCODE_BRANCH =>             
                PC_Sel <= PC_NEXTPC;
            
            when OPCODE_LOAD =>
                PC_Sel <= PC_NEXTPC;

            when OPCODE_STORE =>
                PC_Sel <= PC_NEXTPC;
                
            when OPCODE_OP_IMM =>
                PC_Sel <= PC_NEXTPC;                
            
            when OPCODE_OP =>
                PC_Sel <= PC_NEXTPC;

            when OPCODE_MISC_MEM =>
                PC_Sel <= PC_NEXTPC;
          
            when OPCODE_SYSTEM =>                
                PC_Sel <= PC_NEXTPC;
                
            when others =>
                PC_Sel <= PC_NEXTPC;
        end case;   
    end process;
    
    MEMSTAGE: process(MEM_OPCODE,MEM_FUNCT3,MEM_FUNCT7,Trap)
        variable iscsr: std_logic;
    begin
        iscsr := isnotzero(MEM_FUNCT3);
        case MEM_OPCODE is
            when OPCODE_LUI =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_AUIPC =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_JAL =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_JALR =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_BRANCH =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_LOAD =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
      
            when OPCODE_STORE =>
                DMem_Wen <= '1';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                
            when OPCODE_OP_IMM =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
            
            when OPCODE_OP =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';

            when OPCODE_MISC_MEM =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
           
            when OPCODE_SYSTEM =>                
                DMem_Wen <= '0'; 
                CSRFile_Wen <= iscsr; 
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
                if (iscsr = '0' and MEM_FUNCT7(2 downto 0) = "110") then 
                    MRet <= '1';
                end if;
                
            when others =>
                DMem_Wen <= '0';
                CSRFile_Wen <= '0';
                CSRFile_Trap_Wen <= '0';
                MRet <= '0';
        end case; 
        
        if Trap = '1' then
            DMem_Wen <= '0';
            CSRFile_Wen <= '0';
            CSRFile_Trap_Wen <= '1';
            MRet <= '0';
        end if;
    end process;
    
    WRITEBACK: process(WB_OPCODE,WB_FUNCT3,WBTrap)
        variable iscsr: std_logic;
    begin
        iscsr := isnotzero(WB_FUNCT3);
        case WB_OPCODE is
            when OPCODE_LUI =>
                WB_Sel <= WBSEL_ALU;
                RegFile_Wen <= '1';
            
            when OPCODE_AUIPC =>
                WB_Sel <= WBSEL_ALU;
                RegFile_Wen <= '1';
            
            when OPCODE_JAL =>
                WB_Sel <= WBSEL_NXTPC;
                RegFile_Wen <= '1';
            
            when OPCODE_JALR =>
                WB_Sel <= WBSEL_NXTPC;
                RegFile_Wen <= '1';
            
            when OPCODE_BRANCH =>
                WB_Sel <= (others => '-');
                RegFile_Wen <= '0';
            
            when OPCODE_LOAD =>
                WB_Sel <= WBSEL_MEM;
                RegFile_Wen <= '1';
                 
            when OPCODE_STORE =>
                WB_Sel <= (others => '-');
                RegFile_Wen <= '0';
                                
            when OPCODE_OP_IMM =>
                WB_Sel <= WBSEL_ALU;
                RegFile_Wen <= '1';
            
            when OPCODE_OP =>
                WB_Sel <= WBSEL_ALU;
                RegFile_Wen <= '1';

            when OPCODE_MISC_MEM =>
                WB_Sel <= (others => '-');
                RegFile_Wen <= '0';     
                
            when OPCODE_SYSTEM =>                
                WB_Sel <= WBSEL_CSR;
                RegFile_Wen <= iscsr;  
                
            when others =>
                WB_Sel <= (others => '-');
                RegFile_Wen <= '0';
        end case;
        
        if WBTrap = '1' then
            RegFile_Wen <= '0';
        end if;
    end process;
end rtl; 
