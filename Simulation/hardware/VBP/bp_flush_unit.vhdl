library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity BP_Flush_Unit is
  port (
        STALL: out std_logic;
        FLUSHID: out std_logic;
        FLUSHALU: out std_logic;
        FLUSHMEM: out std_logic;
        FLUSHWB: out std_logic;
        ID_OPCODE: in std_logic_vector(6 downto 0);
        ID_FUNCT3: in std_logic_vector(2 downto 0);
        ALU_OPCODE: in std_logic_vector(6 downto 0);
        MEM_OPCODE: in std_logic_vector(6 downto 0);
        WB_OPCODE: in std_logic_vector(6 downto 0);
        A_BYPASS_SEL: out std_logic_vector(2 downto 0);
        B_BYPASS_SEL: out std_logic_vector(2 downto 0);
        RS2_BYPASS_SEL: out std_logic_vector(2 downto 0);
        RA_ID: in std_logic_vector(4 downto 0);
        RB_ID: in std_logic_vector(4 downto 0);
        RD_ALU: in std_logic_vector(4 downto 0);
        RD_MEM: in std_logic_vector(4 downto 0);
        RD_WB: in std_logic_vector(4 downto 0);
        WBTrap: in std_logic;
        WBMRet: in std_logic;
        BRANCH: in std_logic
    );
        
end BP_Flush_Unit;

architecture rtl of BP_Flush_Unit is
    constant miniload: std_logic_vector(4 downto 0):="00000";
    constant minijal: std_logic_vector(4 downto 0):="11011";

    signal loadstall: std_logic;
    signal loadstalla: std_logic;
    signal loadstallb: std_logic;
    signal loadstallrs2: std_logic;
    signal csrstall: std_logic;
    signal iscsr: std_logic;
    signal regcsr: std_logic_vector(2 downto 0):="000";
    signal flushsystem: std_logic;
    signal flushjmp: std_logic;
begin
    flushsystem <= WBMRet or WBTrap;
    csrstall <= regcsr(0) or regcsr(1) or regcsr(2);
    
    -- stall
    loadstall <= loadstalla or loadstallb or loadstallrs2;
    STALL <= loadstall or csrstall;
    
    --Flush
    FLUSHID <= flushsystem or flushjmp or BRANCH;
    FLUSHALU <= loadstall or csrstall or flushsystem or flushjmp or BRANCH;
    FLUSHMEM <= flushsystem or flushjmp or BRANCH;
    FLUSHWB <= flushsystem;

    CSR: process(ID_OPCODE,ID_FUNCT3)
    begin
        if (ID_OPCODE(6 downto 2)=OPCODE_SYSTEM(6 downto 2) and ID_FUNCT3/="000")then
            iscsr <= '1';
        else
            iscsr <= '0';
        end if;
    end process;
    
    AFoward: process(RA_ID,RD_ALU,RD_MEM,RD_WB,ID_OPCODE,ALU_OPCODE,MEM_OPCODE,WB_OPCODE,iscsr,ID_FUNCT3)
        variable bypass: std_logic_vector(2 downto 0);
        variable bpfromALU,bpfromMEM,bpfromWB: boolean;
        variable needbypass: boolean;
    begin    
        bypass:= NO_BP;
        loadstalla<= '0';
        
        needbypass:= ID_OPCODE(6 downto 2)/=OPCODE_JAL(6 downto 2) and ID_OPCODE(6 downto 2)/=OPCODE_LUI(6 downto 2);
        needbypass:= needbypass and ID_OPCODE(6 downto 2)/=OPCODE_AUIPC(6 downto 2);
        needbypass:= needbypass or (iscsr = '1' and ID_FUNCT3(2)='0');
        
        bpfromALU:= ALU_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and ALU_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromMEM:= MEM_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and MEM_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromWB:= WB_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and WB_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        
        if RA_ID /= "00000" and needbypass then
            if RA_ID = RD_ALU and bpfromALU then
                case ALU_OPCODE(6 downto 2) is 
                    when minijal => bypass:= ALUPC4_BP;
                    when others => bypass:= ALUC_BP;
                end case;
                if ALU_OPCODE(6 downto 2)=OPCODE_LOAD(6 downto 2)  then
                        loadstalla <= '1';
                end if;
            elsif RA_ID = RD_MEM and bpfromMEM then
                case MEM_OPCODE(6 downto 2) is 
                    when miniload => bypass:= LOAD_BP;
                    when minijal => bypass:= MEMPC4_BP;
                    when others => bypass:= MEMC_BP;
                end case;
            elsif RA_ID = RD_WB and bpfromWB then
                bypass:= WB_BP;
            end if;            
        end if;
        
        A_BYPASS_SEL <=bypass;
    end process;
    
    BFoward: process(RB_ID,RD_ALU,RD_MEM,RD_WB,ID_OPCODE,ALU_OPCODE,MEM_OPCODE,WB_OPCODE)
        variable bypass: std_logic_vector(2 downto 0);
        variable bpfromALU,bpfromMEM,bpfromWB: boolean;
        variable needbypass: boolean;
    begin
        bypass:= NO_BP;
        loadstallb<= '0';
        
        needbypass:= ID_OPCODE(6 downto 2)=OPCODE_BRANCH(6 downto 2) or ID_OPCODE(6 downto 2)=OPCODE_OP(6 downto 2);
        
        bpfromALU:= ALU_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and ALU_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromMEM:= MEM_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and MEM_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromWB:= WB_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and WB_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        
        if RB_ID /= "00000" and needbypass then
            if RB_ID = RD_ALU and bpfromALU then
                case ALU_OPCODE(6 downto 2) is 
                    when minijal => bypass:= ALUPC4_BP;
                    when others => bypass:= ALUC_BP;
                end case;
                if ALU_OPCODE(6 downto 2)=OPCODE_LOAD(6 downto 2)  then
                        loadstallb <= '1';
                end if;
            elsif RB_ID = RD_MEM and bpfromMEM then
                case MEM_OPCODE(6 downto 2) is 
                    when miniload => bypass:= LOAD_BP;
                    when minijal => bypass:= MEMPC4_BP;
                    when others => bypass:= MEMC_BP;
                end case;
            elsif RB_ID = RD_WB and bpfromWB then
                bypass:= WB_BP;
            end if;            
        end if;        
        B_BYPASS_SEL <=bypass;
    end process;

    RS2Foward: process(RB_ID,RD_ALU,RD_MEM,RD_WB,ID_OPCODE,ALU_OPCODE,MEM_OPCODE,WB_OPCODE)
        variable bypass: std_logic_vector(2 downto 0);
        variable bpfromALU,bpfromMEM,bpfromWB: boolean;
        variable needbypass: boolean;
    begin
        bypass:= NO_BP;
        loadstallrs2 <= '0';
        
        needbypass:=  ID_OPCODE(6 downto 2)=OPCODE_STORE(6 downto 2);
        
        bpfromALU:= ALU_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and ALU_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromMEM:= MEM_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and MEM_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        bpfromWB:= WB_OPCODE(6 downto 2)/=OPCODE_BRANCH(6 downto 2) and WB_OPCODE(6 downto 2)/=OPCODE_STORE(6 downto 2);
        
        if RB_ID /= "00000" and needbypass then
            if RB_ID = RD_ALU and bpfromALU then
                case ALU_OPCODE(6 downto 2) is 
                    when minijal => bypass:= ALUPC4_BP;
                    when others => bypass:= ALUC_BP;
                end case;
                if ALU_OPCODE(6 downto 2)=OPCODE_LOAD(6 downto 2)  then
                        loadstallrs2 <= '1';
                end if;
            elsif RB_ID = RD_MEM and bpfromMEM then
                case MEM_OPCODE(6 downto 2) is 
                    when miniload => bypass:= LOAD_BP;
                    when minijal => bypass:= MEMPC4_BP;
                    when others => bypass:= MEMC_BP;
                end case;
            elsif RB_ID = RD_WB and bpfromWB then
                bypass:= WB_BP;
            end if;            
        end if;        
        RS2_BYPASS_SEL <=bypass;
    end process;
    
    --StallLoad: process(ALU_OPCODE,RB_ID,RA_ID,RD_ALU)
    --begin
        --loadstall<= '0';
        --if RB_ID /= "00000" or RA_ID /= "00000" then
           --if ALU_OPCODE(6 downto 2)=OPCODE_LOAD(6 downto 2) and (RB_ID = RD_ALU or RA_ID = RD_ALU) then
                --loadstall <= '1';
           --end if;
        --end if;
    --end process;
    
    StallCSR: process(ALU_OPCODE,MEM_OPCODE,WB_OPCODE)
    begin
        regcsr<= "000";
        if ALU_OPCODE(6 downto 2)=OPCODE_SYSTEM(6 downto 2)then
            regcsr(0) <= '1';
        end if;
        
        if MEM_OPCODE(6 downto 2)=OPCODE_SYSTEM(6 downto 2)then
            regcsr(1) <= '1';
        end if;
        
        if WB_OPCODE(6 downto 2)=OPCODE_SYSTEM(6 downto 2)then
            regcsr(2) <= '1';
        end if;
    end process;
    
    JMPFlush: process(MEM_OPCODE)
    begin        
        if MEM_OPCODE(6 downto 2)=OPCODE_JALR(6 downto 2) then
            flushjmp <= '1';
        else
            flushjmp <= '0';
        end if;    
    end process;
    
    
end rtl;
