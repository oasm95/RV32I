library ieee;
use ieee.std_logic_1164.all;

entity RISCV32I is
  generic(
    RESET_ADDR: std_logic_vector:= x"00000020";
    BUS_Width: integer := 32
  );
  port (
    CLK: in std_logic;
    IRQ: in std_logic;
    IMEM_ADDR: out std_logic_vector(BUS_Width-1 downto 0);
    IMEM_DATA: in std_logic_vector(31 downto 0);
    DMEM_ADDR: out std_logic_vector(BUS_Width-1 downto 0);
    DMEM_DATA_L: in std_logic_vector(BUS_Width-1 downto 0);
    DMEM_DATA_S: out std_logic_vector(BUS_Width-1 downto 0);
    DMEM_WEN: out std_logic
  ) ;
end RISCV32I;

architecture rtl of RISCV32I is
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
    signal pcsel: std_logic_vector(1 downto 0);
    signal asel: std_logic_vector(1 downto 0);
    signal bsel: std_logic_vector(1 downto 0);
    signal wbsel: std_logic_vector(1 downto 0);
    signal immsel: std_logic_vector(2 downto 0);
    signal alusel: std_logic_vector(3 downto 0);
    signal wbtrap,trap:  std_logic;
    signal regfileWen,memWen,csrWen,trapWen: std_logic;
    signal mret,ecall,ebreak,illop: std_logic;    
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
        
    DataPath: entity work.DataPath(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map (
            clk => CLK,
            STALL => '0',
            Extern_IRQ => IRQ,
            IMem_addr => IMEM_ADDR,
            IMem_Instruction => IMEM_DATA,
            DMem_addr => DMEM_ADDR,
            DMem_DataLoad => DMEM_DATA_L,
            DMem_DataStore => DMEM_DATA_S,
            PC_Sel => pcsel,
            A_Sel => asel,
            B_Sel => bsel,
            Imm_Sel=> immsel,
            WB_Sel=> wbsel,
            ALU_Sel=> alusel,
            RegFile_Wen=> regfileWen,
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

        DMEM_WEN <= memWen;

end rtl; 
