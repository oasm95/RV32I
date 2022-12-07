library ieee;
use ieee.std_logic_1164.all;

entity RISCV32I is
  generic(
    RESET_ADDR: std_logic_vector:= x"00000000";
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
    signal opcode: std_logic_vector(6 downto 0);
    signal funct3: std_logic_vector(2 downto 0);
    signal funct7: std_logic_vector(3 downto 0);
    signal pcsel: std_logic_vector(1 downto 0);
    signal asel: std_logic_vector(1 downto 0);
    signal bsel: std_logic_vector(1 downto 0);
    signal wbsel: std_logic_vector(1 downto 0);
    signal immsel: std_logic_vector(2 downto 0);
    signal alusel: std_logic_vector(3 downto 0);
    signal z, trap,condtrue:  std_logic;
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
            Z => z,
            Trap => trap,
            CondTrue => condtrue,
            OPCODE => opcode,
            FUNCT3 => funct3,
            FUNCT7 => funct7
        );
        
    DataPath: entity work.DataPath(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map (
            clk => CLK,
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
            Z => z,
            Trap => trap,
            CondTrue => condtrue,
            OPCODE => opcode,
            FUNCT3 => funct3,
            FUNCT7 => funct7
        );

        DMEM_WEN <= memWen;

end rtl; 
