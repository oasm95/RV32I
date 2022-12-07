----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/30/2022 04:19:20 PM
-- Design Name: 
-- Module Name: tbSynth - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tbSynth is
  generic(
    CHOOSE_MODULE: string := "RV32I";
    --VECTOR_SIZE: integer := 8191;
    RESET_ADDR: std_logic_vector := x"00000020";
    BUS_Width: integer := 32
  );
  Port(
        CLK : IN STD_LOGIC;
        RST: IN STD_LOGIC;
        Din1 : in std_logic_vector (31 downto 0);
        Din1Addr: out std_logic_vector(31 downto 0);
        Din2 : in std_logic_vector (31 downto 0);
        Din2Addr: out std_logic_vector(31 downto 0);
        Dout1 : out std_logic_vector (31 downto 0);
        Dout1Addr: out std_logic_vector(31 downto 0);
        Dout1Wen : out std_logic;
        Dout2 : out std_logic_vector (31 downto 0);
        Dout2Addr: out std_logic_vector(31 downto 0);
        Dout2Wen : out std_logic;
        Dhigh : out std_logic;
        Dlow : out std_logic;
        DONE : out std_logic     
   );
end tbSynth;

architecture Behavioral of tbSynth is
    signal cnt: integer range 0 to 8191;
    signal VECTOR_SIZE: integer range 0 to 8191;
begin

    Dhigh<= '1';
    Dlow<= '0';

ImmDecoder: if CHOOSE_MODULE = "IMMDECODER" generate
    signal immsel: std_logic_vector(2 downto 0);
    signal instr: std_logic_vector(31-7 downto 0);
    signal imm: std_logic_vector(32-1 downto 0);
    constant tvsizeImm: integer := 10;
    
begin
    ImmediateDecoder: entity work.ImmDecoder(rtl)
        generic map(BUS_Width=>32)
        port map (
            Immediate => imm,
            Instruction => instr,
            Imm_sel => immsel
        );
    
    immsel <= Din2(2 downto 0); 
    instr <= Din1(31 downto 7);   
    Dout1 <= imm;   
    Dout2 <= NOT Din2; 
    
    VECTOR_SIZE<= tvsizeImm;
    
end generate ImmDecoder;

PC: if CHOOSE_MODULE = "PROGRAMCOUNTER" generate
    signal currentpc: std_logic_vector(BUS_Width-1 downto 0);
    signal nextpc: std_logic_vector(BUS_Width-1 downto 0);
    signal jalrres: std_logic_vector(BUS_Width-1 downto 0);
    signal jumptarget: std_logic_vector(BUS_Width-1 downto 0);
    signal csrpc: std_logic_vector(BUS_Width-1 downto 0);
    signal PC_Sel: std_logic_vector(1 downto 0);
    signal stall: std_logic;
    constant tvsizePC: integer := 2000;
begin
    ProgramCounter: entity work.ProgramCounter(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map(
            clk => clk,
            rst => RST,
            Current_addr => currentpc,
            Next_addr => nextpc,
            Jumps => jumptarget,
            Except_addr => csrpc,
            JALR => jalrres, --jarl sets result.bit(0) to 0
            PC_sel => PC_Sel,
            Stall => stall
        );
    jumptarget <= Din1(31 downto 28) & x"0" & Din1(23 downto 20) & x"0" & Din1(15 downto 12) & x"0" & Din1(7 downto 4) & x"0" ;
    jalrres <= x"0" & Din1(27 downto 24) & x"0" & Din1(19 downto 16) & x"0" & Din1(11 downto 8) & x"0" & Din1(3 downto 2) & "00";
    PC_Sel <= Din1(1 downto 0);
    
    csrpc <= Din2(31 downto 1) & '0';
    stall <= Din2(0);
    
    Dout1 <= currentpc;
    Dout2 <= nextpc;
    
    VECTOR_SIZE<= tvsizePC;
  
end generate PC;

MemInt: if CHOOSE_MODULE = "MEMORYINTERFASE" generate
    signal data_size: std_logic_vector(2 downto 0);
    signal memdataload: std_logic_vector(BUS_Width-1 downto 0);
    signal DMem_DataStore: std_logic_vector(BUS_Width-1 downto 0);
    signal DMem_DataLoad: std_logic_vector(BUS_Width-1 downto 0);
    signal DMem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal rs2: std_logic_vector(BUS_Width-1 downto 0);
    signal aluresult: std_logic_vector(BUS_Width-1 downto 0);
    signal memaccess: std_logic;
    signal memload: std_logic;
    signal memstore: std_logic;
    constant tvsizeMemInt: integer := 2000;
begin
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
     
    DMem_DataLoad <= Din1(31 downto 28) & x"0" & Din1(23 downto 20) & x"0" & Din1(15 downto 12) & x"0" & Din1(7 downto 4) & x"0" ;
    rs2 <= x"0" & Din1(27 downto 24) & x"0" & Din1(19 downto 16) & x"0" & Din1(11 downto 8) & x"0" & Din1(3 downto 0);
    
    aluresult <= x"0" & Din2(27 downto 0);
    data_size <= Din2(30 downto 28);
    
    Dout1 <=DMem_DataStore;
    Dout2 <=memdataload;
    
    VECTOR_SIZE<= tvsizeMemInt;
  
end generate MemInt;

CU: if CHOOSE_MODULE = "CONTROLUNIT" generate
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
    constant tvsizeCU: integer := 1500;    
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
        
        z <= Din2(0);
        trap <=Din2(1);   
        CondTrue <=Din2(2); 
        opcode <= Din1(6 downto 0);
        funct3 <= Din1(14 downto 12);
        funct7 <= Din1(30 downto 29) & Din1(21 downto 20);
        
        Dout1(1 downto 0) <= pcsel;
        Dout1(3 downto 2) <= asel;
        Dout1(5 downto 4) <= bsel;
        Dout1(8 downto 6) <= immsel;
        Dout1(10 downto 9) <= wbsel;
        Dout1(14 downto 11) <= alusel;
        Dout1(15) <= regfileWen;
        Dout1(16) <= memWen;
        Dout1(17) <= csrWen;
        Dout1(18) <= trapWen;
        Dout1(19) <= mret;
        Dout1(20) <= ecall;
        Dout1(21) <= ebreak;
        Dout1(22) <= illop;
        Dout1(31 downto 23) <= (others => '0');
        
        Dout2 <= (others => '0');
        
        VECTOR_SIZE<= tvsizeCU;

end generate CU;

RF: if CHOOSE_MODULE = "REGISTERFILE" generate
    signal rs1addr: std_logic_vector(4 downto 0);
    signal rs2addr: std_logic_vector(4 downto 0);
    signal rdaddr: std_logic_vector(4 downto 0);
    signal rs1: std_logic_vector(BUS_Width-1 downto 0);
    signal rs2: std_logic_vector(BUS_Width-1 downto 0);
    signal rd: std_logic_vector(BUS_Width-1 downto 0);
    signal RegFile_Wen: std_logic;
    constant tvsizeRF: integer := 2032;
begin
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
  
    rs1addr <= Din1(4 downto 0);
    rs2addr <= Din1(9 downto 5);
    rdaddr <= Din1(14 downto 10);
    RegFile_Wen <= Din1(15);
    rd <= Din2;
    
    Dout2 <= rs2;
    Dout1 <= rs1;
    
    VECTOR_SIZE<= tvsizeRF;
    
end generate RF;

ALU: if CHOOSE_MODULE = "ALU" generate
    signal zero: std_logic;
    signal condT: std_logic;
    signal muxAval: std_logic_vector(BUS_Width-1 downto 0);
    signal muxBval: std_logic_vector(BUS_Width-1 downto 0);
    signal aluresult: std_logic_vector(BUS_Width-1 downto 0);
    signal ALU_Sel: std_logic_vector(3 downto 0);
    signal misalW: std_logic;
    signal misalHW: std_logic;
    constant tvsizeALU: integer := 2048;
    
begin
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
        
    ALU_Sel(1 downto 0) <= Din1(17 downto 16);
    ALU_Sel(3 downto 2) <= Din2(17 downto 16); 
    muxAval <= Din1(31 downto 18) & "00" & Din1(15 downto 0);
    muxBval <= Din2(31 downto 18) & "00" & Din2(15 downto 0);
    
    Dout1 <= aluresult;
    
    VECTOR_SIZE<= tvsizeALU;
  
end generate ALU;


NORV32I: if CHOOSE_MODULE /= "RV32I" generate
begin
        process(CLK)
    begin
        if(rising_edge(CLK))then
            if (RST = '0') then
                cnt<= 0;
                DONE <= '0';
                Dout1Wen <= '0';
                Dout2Wen <= '0';
            elsif (cnt /= VECTOR_SIZE) then
                cnt <= cnt + 1;
                DONE <= '0';
                Dout1Wen <= '1';
                Dout2Wen <= '1';
            else
                cnt <= cnt;
                DONE <= '1';
                Dout1Wen <= '0';
                Dout2Wen <= '0';
            end if;        
        end if;   
    end process;
    
    Din1Addr <= std_logic_vector(to_unsigned(cnt, Din1Addr'length-2)) & "00";
    Din2Addr <= std_logic_vector(to_unsigned(cnt, Din2Addr'length-2)) & "00";
    Dout1Addr <= std_logic_vector(to_unsigned(cnt, Dout1Addr'length-2)) & "00"; 
    Dout2Addr <= std_logic_vector(to_unsigned(cnt, Dout2Addr'length-2)) & "00"; 

end generate NORV32I;

RV32I: if CHOOSE_MODULE = "RV32I" generate
    signal irq: std_logic;
    signal imem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal imem_data: std_logic_vector(31 downto 0);
    signal dmem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal dmem_data_l: std_logic_vector(BUS_Width-1 downto 0);
    signal dmem_data_s: std_logic_vector(BUS_Width-1 downto 0);
    signal dmemwen: std_logic;
    signal mem_access: std_logic;
begin

    RISCV32I: entity work.RISCV32I(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map (
            CLK => CLK,
            RST => RST,
            IRQ => irq,
            STALL => '0',
            IMEM_ADDR => imem_addr,
            IMEM_DATA => imem_data,
            DMEM_ADDR => dmem_addr,
            DMEM_DATA_L => dmem_data_l,
            DMEM_DATA_S => dmem_data_s,
            Mem_Access => mem_access,
            DMEM_WEN => dmemwen
        );
        
    irq <= '0';
    --Instructions Memory
    Din1Addr<=imem_addr;
    imem_data<=Din1;
    --Data Memory
    Dout2Addr<=dmem_addr;
    dmem_data_l<=Din2;
    Dout2<=dmem_data_s;
    Dout2Wen<=dmemwen;
    
    Din2Addr <= (others =>'0');
    Dout1Addr <= (others =>'0'); 
    Dout1Wen<='0';
    
end generate RV32I;
    
end behavioral;
