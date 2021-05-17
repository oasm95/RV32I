library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity DataPath is
  generic(
    RESET_ADDR: std_logic_vector := x"00000020";
    BUS_Width: integer := 32
  );
  port (
    clk : in std_logic;
    STALL: in std_logic;
    Extern_IRQ: in std_logic;
    IMem_addr: out std_logic_vector(BUS_Width-1 downto 0);
    IMem_Instruction: in std_logic_vector(31 downto 0);
    DMem_addr: out std_logic_vector(BUS_Width-1 downto 0);
    DMem_DataLoad: in std_logic_vector(BUS_Width-1 downto 0);
    DMem_DataStore: out std_logic_vector(BUS_Width-1 downto 0);
    PC_Sel: in std_logic_vector(1 downto 0);
    A_Sel: in std_logic_vector(1 downto 0);
    B_Sel: in std_logic_vector(1 downto 0);
    WB_Sel: in std_logic_vector(1 downto 0);
    Imm_Sel: in std_logic_vector(2 downto 0);
    ALU_Sel: in std_logic_vector(3 downto 0);
    RegFile_Wen: in std_logic;
    CSRFile_Wen: in std_logic;
    CSRFile_Trap_Wen: in std_logic;
    MRet: in std_logic;
    ECall: in std_logic;
    EBreak: in std_logic;
    Ill_op: in std_logic;
    Trap: out std_logic;
    WBTrap: out std_logic;
    ID_OPCODE: out std_logic_vector(6 downto 0);
    ID_FUNCT3: out std_logic_vector(2 downto 0);
    ID_FUNCT7: out std_logic_vector(3 downto 0);
    ALU_OPCODE: out std_logic_vector(6 downto 0);
    ALU_FUNCT3: out std_logic_vector(2 downto 0);
    ALU_FUNCT7: out std_logic_vector(3 downto 0);
    MEM_OPCODE: out std_logic_vector(6 downto 0);
    MEM_FUNCT3: out std_logic_vector(2 downto 0);
    MEM_FUNCT7: out std_logic_vector(3 downto 0);
    WB_OPCODE: out std_logic_vector(6 downto 0);
    WB_FUNCT3: out std_logic_vector(2 downto 0)
  ) ;
end DataPath;

architecture rtl of DataPath is
    --Trap Constants
    constant cECALL: integer :=2;
    constant cEBREAK: integer:=1;
    constant cILLOP: integer :=0;
    --PC
    signal currentpc: std_logic_vector(BUS_Width-1 downto 0);
    signal nextpc: std_logic_vector(BUS_Width-1 downto 0);
    signal jalrres: std_logic_vector(BUS_Width-1 downto 0);
    --RegFile
    signal rs1addr: std_logic_vector(4 downto 0);
    signal rs2addr: std_logic_vector(4 downto 0);
    signal rdaddr: std_logic_vector(4 downto 0);
    signal rs1: std_logic_vector(BUS_Width-1 downto 0);
    signal rs2: std_logic_vector(BUS_Width-1 downto 0);
    signal rd: std_logic_vector(BUS_Width-1 downto 0);

    --ImmDecoder
    signal encodedImm: std_logic_vector(BUS_Width-1-7 downto 0);
    signal imm: std_logic_vector(BUS_Width-1 downto 0);
    --CSR
    signal csraddr: std_logic_vector(11 downto 0);
    signal csrWaddr: std_logic_vector(11 downto 0);
    signal csrdata: std_logic_vector(BUS_Width-1 downto 0);
    signal csrpc: std_logic_vector(BUS_Width-1 downto 0);
    signal allowcsrwrite: std_logic;
    --ALU
    signal zero: std_logic;
    signal condT: std_logic;
    signal muxAval: std_logic_vector(BUS_Width-1 downto 0);
    signal muxBval: std_logic_vector(BUS_Width-1 downto 0);
    signal aluresult: std_logic_vector(BUS_Width-1 downto 0);
    --Data memory 
    signal data_size: std_logic_vector(2 downto 0);
    signal memdataload: std_logic_vector(BUS_Width-1 downto 0);
    signal memaccess: std_logic;
    signal memload: std_logic;
    signal memstore: std_logic;
    -- signals for jumps
    signal jumptarget : std_logic_vector(BUS_Width-1 downto 0);
    --signals used for to detect an exception
    signal excpt_opcode: std_logic_vector(6 downto 0);
    signal excpt_cause: std_logic_vector(3 downto 0);
    signal excpt_funct: std_logic_vector(1 downto 0);
    signal irq: std_logic;
    signal any_except: std_logic;
    signal loadmisalig: std_logic;
    signal storemisalig: std_logic;
    signal instrmisalig: std_logic;
    signal trap_wrap: std_logic;
    -- pipeline signals
    --  ***PC
    signal  realpcsel: std_logic_vector(1 downto 0);
    signal  IDpc: std_logic_vector(BUS_Width-1 downto 0);
    signal  ALUpc: std_logic_vector(BUS_Width-1 downto 0);
    signal  MEMpc: std_logic_vector(BUS_Width-1 downto 0);
        --  ***PC+4
    signal  IDpc_4: std_logic_vector(BUS_Width-1 downto 0);
    signal  ALUpc_4: std_logic_vector(BUS_Width-1 downto 0);
    signal  MEMpc_4: std_logic_vector(BUS_Width-1 downto 0);
    signal  WBpc_4: std_logic_vector(BUS_Width-1 downto 0);
    --  ***Instruction
    signal  IDinstr: std_logic_vector(31 downto 0):=NOP;
    signal  ALUinstr: std_logic_vector(31 downto 0):=NOP;
    signal  MEMinstr: std_logic_vector(31 downto 0):=NOP;
    signal  WBinstr: std_logic_vector(31 downto 0):=NOP;
    --  ***ExcpVector
    signal ALUexecptions:std_logic_vector(2 downto 0):= "000";
    signal MEMexecptions:std_logic_vector(2 downto 0):= "000";    
    --***ALU
    signal regA: std_logic_vector(BUS_Width-1 downto 0);
    signal regB: std_logic_vector(BUS_Width-1 downto 0);
    signal regRS2ALU: std_logic_vector(BUS_Width-1 downto 0);
    signal regCSRALU: std_logic_vector(BUS_Width-1 downto 0);
    signal regImmALU: std_logic_vector(BUS_Width-1 downto 0);
    signal isbranch: std_logic;
    signal tkbranch: std_logic;
    --***MEM
    signal MEMrs1addr: std_logic_vector(4 downto 0);
    signal regIsbranch: std_logic:='0';
    signal regTkbranch: std_logic:='0';
    signal regJmpalign: std_logic_vector(1 downto 0);
    signal regCMEM: std_logic_vector(BUS_Width-1 downto 0);
    signal regRS2MEM: std_logic_vector(BUS_Width-1 downto 0);
    signal regCSRMEM: std_logic_vector(BUS_Width-1 downto 0);
    --***WB
    signal regWBTrap: std_logic:='0';
    signal regCWB: std_logic_vector(BUS_Width-1 downto 0);
    signal regLoadWB: std_logic_vector(BUS_Width-1 downto 0);
    signal regCSRWB: std_logic_vector(BUS_Width-1 downto 0);
    
    
    --functions
    function isnotzero(vec: std_logic_vector) return std_logic is
        variable result: std_logic :='0';
    begin
        for i in vec'range loop
            result:= result or vec(i);
        end loop;
        return result;
    end;
    
    
begin
    -- Instantiation
    ProgramCounter: entity work.ProgramCounter(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map(
            clk => clk,
            Current_addr => currentpc,
            Next_addr => nextpc,
            Jumps => jumptarget,
            Except_addr => csrpc,
            JALR => jalrres, --jarl sets result.bit(0) to 0
            PC_sel => realpcsel,
            Stall => STALL
        );

    Registers: entity work.RegisterFile(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map(
            clk => clk,
            RegA_addr => rs1addr,
            RegB_addr => rs2addr,
            RegA_data => rs1,
            RegB_data => rs2,
            W_data => rd,
            W_addr => rdaddr,
            W_en => RegFile_Wen 
        );
        
    ImmediateDecoder: entity work.ImmDecoder(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            Immediate => imm,
            Instruction => encodedImm,
            Imm_sel => Imm_Sel
        );
        
    CSR: entity work.CSRFile(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            clk => clk,
            Extern_IRQ => Extern_IRQ,
            CSR_IRQ => irq,
            CSR_PCaddr => csrpc,
            CSR_data => csrdata,
            CSR_mepc => MEMpc,
            CSR_Wdata => regCSRMEM,
            CSR_mcause => excpt_cause,
            CSR_Raddr => csraddr,
            CSR_Waddr => csrWaddr,
            CSR_Wen => allowcsrwrite,
            CSR_Wen_traps => CSRFile_Trap_Wen,
            CSR_Ret => MRet
        );
        
    ALU: entity work.ALU(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            A => regA,
            B => regB,
            C => aluresult,
            FunSel => ALU_Sel,
            Z => zero,
            CondTrue => condT
        );
        
    MemoryInterface: entity work.MemInterface(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            Extern_Data_Store => DMem_DataStore,
            Extern_Data_Load => DMem_DataLoad,
            Extern_Mem_addr => DMem_addr,
            Data_Load => memdataload,
            Data_Store => regRS2MEM,
            Mem_addr => regCMEM,
            Mem_size => data_size
        );
    
    -- *************Instruction Fetch**************
    -- PC to Instruction memory address
    IMem_addr <= currentpc;  
    ID_REGISTERS:process(clk)
    begin
        --IDinstr <= NOP;
        if rising_edge(clk) then
            if STALL = '0' then
                IDpc <= currentpc;
                IDpc_4 <= nextpc;
                IDinstr <= IMem_Instruction;
            end if;
        end if;
    end process;
    -- *************Instruction Decode**************
    --  CU
    ID_OPCODE <= IDinstr(6 downto 0);
    ID_FUNCT3 <= IDinstr(14 downto 12);
    ID_FUNCT7 <= IDinstr(30 downto 29) & IDinstr(21 downto 20);
    --  REGFILE
    rs1addr <= IDinstr(19 downto 15);
    rs2addr <= IDinstr(24 downto 20);
    --  Enconded Immediate
    encodedImm <= IDinstr(31 downto 7);
    --  CSR
    csraddr <= IDinstr(31 downto 20);    

    AOperandSelect: process (A_Sel,rs1,csrdata,IDpc)
    begin
        case A_Sel is
            when ASEL_RS1 => muxAval <= rs1;
            when ASEL_CSR => muxAval <= csrdata;
            when ASEL_PC => muxAval <= IDpc;
            when others => muxAval <= (others => '-');
        end case;    
    end process;
    
    BOperandSelect: process (B_Sel,rs2,csrdata,imm)
    begin
        case B_Sel is
            when BSEL_RS2 => muxBval <= rs2;
            when BSEL_CSR => muxBval <= csrdata;
            when BSEL_IMM => muxBval <= imm;
            when others => muxBval <= (others => '-');
        end case;    
    end process;
    
    ALU_REGISTERS: process(clk)
    begin
        --ALUinstr <= NOP;
        if rising_edge(clk) then
            ALUpc <= IDpc;
            ALUpc_4 <= IDpc_4;
            ALUinstr <= IDinstr;
            regA <= muxAval;
            regB <= muxBval;
            regCSRALU <= csrdata;
            regRS2ALU <= rs2;  
            regImmALU <= imm;
            ALUexecptions(cECALL) <= ECall;
            ALUexecptions(cEBREAK) <= EBreak;
            ALUexecptions(cILLOP) <= Ill_op;
        end if;
    end process;

    -- *************ALU Stage**************
    --  CU
    ALU_OPCODE <= ALUinstr(6 downto 0);
    ALU_FUNCT3<= ALUinstr(14 downto 12);
    ALU_FUNCT7<=ALUinstr(30 downto 29) & ALUinstr(21 downto 20);
    
    --  unconditional JMP
    CalcJumpTarget: process(regImmALU,ALUpc)
    begin       
        jumptarget<= std_logic_vector(signed(ALUpc)+signed(regImmALU));
    end process;
    --  address from jalr instruction
    jalrres <= aluresult(BUS_Width-1 downto 1) & '0';
    --  conditional JMP
    BRANCHES: process(ALUinstr(6 downto 0),ALUinstr(14 downto 12),zero,condT)
        variable branchtype: std_logic_vector(1 downto 0);
        alias aluopcode: std_logic_vector(6 downto 0) is ALUinstr(6 downto 0);
    begin
        branchtype:=ALUinstr(14)&ALUinstr(12);
        if aluopcode = OPCODE_BRANCH then
            isbranch <= '1';
        else
            isbranch <= '0';
        end if;
    
        case branchtype is
            when "00" => tkbranch <= zero; --BEQ
            when "01" => tkbranch <= not zero; --BNE
            when "10" => tkbranch <= condT; --BL
            when "11" => tkbranch <= not condT; --BG
            when others => NULL;
        end case;
    end process;    
    
    MEM_REGISTERS: process(clk)
    begin
        --MEMinstr <= NOP;
        if rising_edge(clk) then
            MEMpc <= ALUpc;
            MEMpc_4 <= ALUpc_4;
            MEMinstr <= ALUinstr;
            regCMEM <= aluresult;
            regRS2MEM <= regRS2ALU;
            regCSRMEM <= regCSRALU;
            regIsbranch <= isbranch;
            regTkbranch<= tkbranch;
            regJmpalign <= jumptarget(1 downto 0);
            MEMexecptions <= ALUexecptions;
        end if;    
    end process;
    
    -- *************MEM Stage**************
    --  CU
    MEM_OPCODE <=MEMinstr(6 downto 0);
    MEM_FUNCT3<= MEMinstr(14 downto 12);
    MEM_FUNCT7<=MEMinstr(30 downto 29) & MEMinstr(21 downto 20);
    --  MemInterface
    data_size <=MEMinstr(14 downto 12);
    -- CSR
    csrWaddr <= MEMinstr(31 downto 20);
    MEMrs1addr <= MEMinstr(19 downto 15);
    
        --***********CSR allow writes *******
    EnableCSRWrite:process(CSRFile_Wen,data_size,MEMrs1addr)
        alias pfunct3: std_logic_vector(2 downto 0) is data_size;
        variable isnotreg0: std_logic;
        variable isnotcsrrw: std_logic;
    begin
        isnotreg0 := isnotzero(MEMrs1addr);
        
        isnotcsrrw:= pfunct3(1);
        
        allowcsrwrite<= CSRFile_Wen and (not ((not isnotreg0) and isnotcsrrw));
    end process;    
    
    WB_REGISTERS: process(clk)
    begin
        --WBinstr <= NOP;
        if rising_edge(clk) then
            WBpc_4 <= MEMpc_4;
            WBinstr <= MEMinstr;
            regCWB <= regCMEM;
            regCSRWB <= regCSRMEM;
            regLoadWB <= memdataload;
            regWBTrap <= trap_wrap; 
        end if;    
    end process;
    
    -- *************Write Back Stage**************
    --  CU
    WB_OPCODE<=WBinstr(6 downto 0);
    WB_FUNCT3<=WBinstr(14 downto 12);
    --  REGS
    rdaddr <= WBinstr(11 downto 7);
    
    RdDataSelect: process(WB_Sel,regCWB,regLoadWB,WBpc_4,regCSRWB)
    begin
        case WB_Sel is
            when WBSEL_ALU => rd <= regCWB;
            when WBSEL_MEM => rd <= regLoadWB;
            when WBSEL_NXTPC => rd <= WBpc_4;
            when WBSEL_CSR => rd <= regCSRWB;
            when others => NULL;
        end case; 
    end process;
      

    --*********RealPCSel setting**********
    realpcsel(0) <= PC_Sel(0) or trap_wrap or (isbranch and tkbranch) or MRet;
    realpcsel(1) <= PC_Sel(1) or trap_wrap or MRet;
    
    --**********Exception and Interrupts****** in MEM-Stage
    -- exception opcode 
    excpt_opcode <= MEMinstr(6 downto 0);    
    any_except <= (loadmisalig or storemisalig) or instrmisalig;
    trap_wrap <= (irq or any_except) or (MEMexecptions(cEBREAK) or MEMexecptions(cECALL) or MEMexecptions(cILLOP));
    Trap <=trap_wrap;
    WBTrap <= regWBTrap;
    
    InstructionAddressMisaligned:process(excpt_opcode,regJmpalign,regCMEM(1),regIsbranch,regTkbranch)
        variable isjal: std_logic;
        variable isjalr: std_logic;
        variable misajmp: std_logic;
    begin
        --isbrach:= '1' when (excpt_opcode = OPCODE_BRANCH) else '0';
        if excpt_opcode = OPCODE_JAL then
            isjal := '1';
        else
            isjal := '0';
        end if;
        
        if excpt_opcode = OPCODE_JALR then
            isjalr := '1';
        else
            isjalr := '0';
        end if;
       
        misajmp := regJmpalign(0) or regJmpalign(1);
        instrmisalig <= (isjalr and regCMEM(1)) or (misajmp and ((regIsbranch and regTkbranch) or isjal));
    end process;
    
    MemoryAddressMisaligned: process(excpt_opcode,regCMEM(1 downto 0),data_size(1 downto 0))
        alias wordsize : std_logic is data_size(1);
        alias halfwordsize : std_logic is data_size(0);
        alias misalHW: std_logic is regCMEM(1);
        variable misalW: std_logic;
        variable isstore: std_logic;
        variable isload: std_logic;
        variable ismisa: std_logic;
    begin
        misalW := regCMEM(1) or regCMEM(0);
        if excpt_opcode = OPCODE_STORE then
            isstore := '1';
        else
            isstore := '0';
        end if;
        
        if excpt_opcode = OPCODE_LOAD then
            isload := '1';
        else
            isload := '0';
        end if;
        
        ismisa:= (wordsize and misalW) or (halfwordsize and misalHW); 
        storemisalig <= isstore and ismisa;
        loadmisalig <= isload and ismisa;
    end process;
  
    
    --priority encoder cause of exception
    SelectCause: process(Ill_op,ECall,EBreak,loadmisalig,storemisalig,instrmisalig,irq)
    begin
        if (irq = '1') then
            excpt_cause <= CAUSE_MEI;
        elsif (MEMexecptions(cEBREAK) = '1') then
            excpt_cause <= CAUSE_EBREAK;
        elsif (instrmisalig = '1') then
            excpt_cause <= CAUSE_IMISA;
        elsif (MEMexecptions(cILLOP) = '1') then
            excpt_cause <= CAUSE_ILLOP;
        elsif (MEMexecptions(cECALL) = '1') then
            excpt_cause <= CAUSE_ECALL;
        elsif (storemisalig = '1') then
            excpt_cause <= CAUSE_SMISA;
        elsif (loadmisalig = '1') then
            excpt_cause <= CAUSE_LMISA;
        else
            excpt_cause <= (others => '-');
        end if;
    end process;
    
end rtl ; 
