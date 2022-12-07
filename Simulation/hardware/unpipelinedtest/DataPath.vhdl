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
    Z: out std_logic;
    Trap: out std_logic;
    CondTrue: out std_logic;
    OPCODE: out std_logic_vector(6 downto 0);
    FUNCT3: out std_logic_vector(2 downto 0);
    FUNCT7: out std_logic_vector(3 downto 0);
    MLOAD: out std_logic;
    MSTORE: out std_logic;
    MACCESS: out std_logic
  ) ;
end DataPath;

architecture rtl of DataPath is
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
    signal misalW: std_logic;
    signal misalHW: std_logic;
    signal any_except: std_logic;
    signal loadmisalig: std_logic;
    signal storemisalig: std_logic;
    signal instrmisalig: std_logic;
    
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
            PC_sel => PC_Sel,
            Stall => '0'
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
            CSR_mepc => currentpc,
            CSR_Wdata => aluresult,
            CSR_mcause => excpt_cause,
            CSR_addr => csraddr,
            CSR_Wen => allowcsrwrite,
            CSR_Wen_traps => CSRFile_Trap_Wen,
            CSR_Ret => MRet
        );
        
    ALU: entity work.ALU(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            A => muxAval,
            B => muxBval,
            C => aluresult,
            FunSel => ALU_Sel,
            Z => zero,
            CondTrue => condT,
            MisalignedW => misalW,
            MisalignedHW => misalHW
        );
        
    MemoryInterface: entity work.MemInterface(rtl)
        generic map(BUS_Width=>BUS_Width)
        port map (
            Extern_Data_Store => DMem_DataStore,
            Extern_Data_Load => DMem_DataLoad,
            Extern_Mem_addr => DMem_addr,
            Data_Load => memdataload,
            Data_Store => rs2,
            Mem_addr => aluresult,
            Mem_size => data_size
        );
    -- PC to Instruction memory address
    IMem_addr <= currentpc;  
    
    --*********Signals related directly by the Instruction****
    
    -- bits of Instruction relevant to Control Unit
    OPCODE <= IMem_Instruction(6 downto 0);
    FUNCT3<= IMem_Instruction(14 downto 12);
    FUNCT7<=IMem_Instruction(30 downto 29) & IMem_Instruction(21 downto 20);
    -- Registers Select
    rs1addr <= IMem_Instruction(19 downto 15);
    rs2addr <= IMem_Instruction(24 downto 20);
    rdaddr <= IMem_Instruction(11 downto 7);
    -- Enconded Immediate
    encodedImm <= IMem_Instruction(31 downto 7);
    -- CSR
    csraddr <= IMem_Instruction(31 downto 20);
    -- exception opcode 
    excpt_opcode <= IMem_Instruction(6 downto 0);
    excpt_funct(1) <= IMem_Instruction(14); --only this bits used to diferentiate branch functions
    excpt_funct(0) <= IMem_Instruction(12);
    -- size of memory instructions 
    data_size <=IMem_Instruction(14 downto 12);
    -- address from jalr instruction
    jalrres <= aluresult(BUS_Width-1 downto 1) & '0';
    --**********ALU Operands Selection***********
    Z<= zero;
    CondTrue <= condT;
    
    MLOAD<= memload;
    MSTORE<= memstore;
    MACCESS<=memaccess;
    
    Memaccesssignals: process(excpt_opcode,loadmisalig,storemisalig)
		variable varload: std_logic;
		variable varstore: std_logic;
    begin
		if excpt_opcode = OPCODE_LOAD then
			varload:= '1';
		else
			varload:= '0';
		end if;
		memload <= varload;
		
		if excpt_opcode = OPCODE_STORE then
			varstore:= '1';
		else
			varstore:= '0';
		end if;
		memstore <= varstore;
		
		memaccess <= (varload and not loadmisalig) or (varstore and not storemisalig);
    end process;
    
    AOperandSelect: process (A_Sel,rs1,csrdata,currentpc)
    begin
        case A_Sel is
            when ASEL_RS1 => muxAval <= rs1;
            when ASEL_CSR => muxAval <= csrdata;
            when ASEL_PC => muxAval <= currentpc;
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
    
    --********** Register File Rd value Selection******
    RdDataSelect: process(WB_Sel,aluresult,memdataload,nextpc,csrdata)
    begin
        case WB_Sel is
            when WBSEL_ALU => rd <= aluresult;
            when WBSEL_MEM => rd <= memdataload;
            when WBSEL_NXTPC => rd <= nextpc;
            when WBSEL_CSR => rd <= csrdata;
            when others => NULL;
        end case; 
    end process;
    
    --***********CSR allow writes *******
    EnableCSRWrite:process(CSRFile_Wen,data_size,rs1addr)
        alias pfunct3: std_logic_vector(2 downto 0) is data_size;
        variable isnotreg0: std_logic;
        variable isnotcsrrw: std_logic;
    begin
        isnotreg0 := isnotzero(rs1addr);
        
        isnotcsrrw:= pfunct3(1);
        
        allowcsrwrite<= CSRFile_Wen and (not ((not isnotreg0) and isnotcsrrw));
    end process;    
    -- **********JUMPtarget calc*********
    CalcJumpTarget: process(imm,currentpc)
    begin       
        jumptarget<= std_logic_vector(signed(currentpc)+signed(imm));
    end process;
    
    --**********Exception and Interrupts******
    any_except <= (loadmisalig or storemisalig) or instrmisalig;
    Trap <= irq or any_except;
    
    InstructionAddressMisaligned:process(excpt_opcode,excpt_funct,jumptarget,condT,zero,aluresult(1))
        variable isbranch: std_logic;
        variable tkbranch: std_logic;
        variable isjal: std_logic;
        variable isjalr: std_logic;
        variable misajmp: std_logic;
    begin
        --isbrach:= '1' when (excpt_opcode = OPCODE_BRANCH) else '0';
        if excpt_opcode = OPCODE_BRANCH then
            isbranch := '1';
        else
            isbranch := '0';
        end if;
        
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
        
        case excpt_funct is
            when "00" => tkbranch := zero; --BEQ
            when "01" => tkbranch := not zero; --BNE
            when "10" => tkbranch := condT; --BL
            when "11" => tkbranch := not condT; --BG
            when others => NULL;
        end case;
        
        
        misajmp := jumptarget(0) or jumptarget(1);
        instrmisalig <= (isjalr and aluresult(1)) or (misajmp and ((isbranch and tkbranch) or isjal));
    end process;
    
    StoreAddressMisaligned: process(excpt_opcode,misalHW,misalW,data_size(1 downto 0))
        alias wordsize : std_logic is data_size(1);
        alias halfwordsize : std_logic is data_size(0);
        variable isstore: std_logic;
        variable ismisa: std_logic;
    begin
        if excpt_opcode = OPCODE_STORE then
            isstore := '1';
        else
            isstore := '0';
        end if;
        
        ismisa:= (wordsize and misalW) or (halfwordsize and misalHW); 
        storemisalig <= isstore and ismisa;
    end process;

    LoadAddressMisaligned: process(excpt_opcode,misalHW,misalW,data_size(1 downto 0))
        alias wordsize : std_logic is data_size(1);
        alias halfwordsize : std_logic is data_size(0);
        variable isload: std_logic;
        variable ismisa: std_logic;
    begin
        if excpt_opcode = OPCODE_LOAD then
            isload := '1';
        else
            isload := '0';
        end if;
        
        ismisa:= (wordsize and misalW) or (halfwordsize and misalHW);      
        loadmisalig <= isload and ismisa;
    end process;
    
    
    --priority encoder cause of exception
    SelectCause: process(Ill_op,ECall,EBreak,loadmisalig,storemisalig,instrmisalig,irq)
    begin
        if (irq = '1') then
            excpt_cause <= CAUSE_MEI;
        elsif (EBreak = '1') then
            excpt_cause <= CAUSE_EBREAK;
        elsif (instrmisalig = '1') then
            excpt_cause <= CAUSE_IMISA;
        elsif (Ill_op = '1') then
            excpt_cause <= CAUSE_ILLOP;
        elsif (ECall = '1') then
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
