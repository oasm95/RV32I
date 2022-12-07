----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/25/2022 10:56:15 AM
-- Design Name: 
-- Module Name: uCtb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uCtb is
 generic(
    CHOOSE_MODULE: string := "RV32I";
    --VECTOR_SIZE: integer := 8191;
    DONE_ADDR: std_logic_vector := x"80000000";
    RESET_ADDR: std_logic_vector := x"80000010";
    BUS_Width: integer := 32
  );
  Port(
        CLK : IN STD_LOGIC;
        RST: IN STD_LOGIC;
        IMem : in std_logic_vector (31 downto 0);
        STALL: IN STD_LOGIC;
        IMemAddr: out std_logic_vector(31 downto 0);
        DMemLoad : in std_logic_vector (31 downto 0);
        DMemAddr: out std_logic_vector(31 downto 0);
        DMemStore : out std_logic_vector (31 downto 0);
        DMemWen : out std_logic;
        Dhigh : out std_logic;
        Dlow : out std_logic;
        DONE : out std_logic     
   );
end uCtb;

architecture Behavioral of uCtb is
    signal irq: std_logic;
    signal imem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal dmem_addr: std_logic_vector(BUS_Width-1 downto 0);
    signal mem_access: std_logic;
    signal cnt: integer range 0 to 3;
    signal sgn_stall: std_logic;
begin

    RISCV32I: entity work.RISCV32I(rtl)
        generic map(RESET_ADDR=> RESET_ADDR,BUS_Width=>BUS_Width)
        port map (
            CLK => CLK,
            RST => RST,
            IRQ => irq,
            STALL => sgn_stall,
            IMEM_ADDR => imem_addr,
            IMEM_DATA => IMem,
            DMEM_ADDR => dmem_addr,
            DMEM_DATA_L => DMemLoad,
            DMEM_DATA_S => DMemStore,
            Mem_Access => mem_access,
            DMEM_WEN => DMemWen
        );
        
    Dhigh<= '1';
    Dlow<= '0';
    
    IMemAddr <= (31 downto 16 => '0') & imem_addr(15 downto 0);
    DMemAddr <= (31 downto 16 => '0') & dmem_addr(15 downto 0);
    
    DONE <= '1' when imem_addr = DONE_ADDR else '0'; 
    
    process(clk)
    begin
        if rising_edge(clk) then
            if RST ='0' then
                sgn_stall<= '1';
                cnt <= 0;
            elsif (cnt = 2) then
                sgn_stall<= '0';
                cnt <= 0;
            else
                sgn_stall<= '1';
                cnt <= cnt+1;  
            end if;           
        end if;
    end process;
    
end Behavioral;
