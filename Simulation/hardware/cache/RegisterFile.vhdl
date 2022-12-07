library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegisterFile is
  generic(
    BUS_Width: integer :=32
  );
  port (
    clk: in std_logic;
    RegA_addr: in std_logic_vector(4 downto 0);
    RegB_addr: in std_logic_vector(4 downto 0);
    RegA_data: out std_logic_vector(BUS_Width-1 downto 0);
    RegB_data: out std_logic_vector(BUS_Width-1 downto 0);
    W_data: in std_logic_vector(BUS_Width-1 downto 0);
    W_addr: in std_logic_vector(4 downto 0);
    W_en: in std_logic
  ) ;
end RegisterFile;

architecture rtl of RegisterFile is
    type REG_ARRAY is array (0 to 31) of std_logic_vector (BUS_Width-1 downto 0);
    signal registers : REG_ARRAY;
    constant zeros: std_logic_vector(4 downto 0) := (others => '0');
begin

    Write_RegFile : process(CLK)
    begin
        if (rising_edge(clk)) then
            if (W_addr /= zeros and W_en = '1') then
                registers(to_integer(unsigned(W_addr))) <= W_data;
            end if;        
        end if;
    end process ; -- Write_RegFile

    Read_RegA : process(RegA_addr,registers)
    begin
        if (RegA_addr = zeros) then
            RegA_data <=(others => '0');
        else
            RegA_data <= registers(to_integer(unsigned(RegA_addr)));
        end if;
    end process ; -- Read_RegA
    
    Read_RegB : process(RegB_addr,registers)
    begin
        if (RegB_addr = zeros) then
            RegB_data <=(others => '0');
        else
            RegB_data <= registers(to_integer(unsigned(RegB_addr)));
        end if;
    end process ; -- Read_RegA
    
    --Reg_write: for i in REG_ARRAY'range generate
        --process(clk)            
        --begin
            --if rising_edge(clk) then
                --if (W_addr = std_logic_vector(to_unsigned(i,W_addr'length)) and W_en = '1') then
                    --registers(i) <= W_data;
                --end if;
            --end if;        
        --end process;
    --end generate Reg_write;
    
    --Read_RegA: process(RegA_addr,registers)
        --variable indexA: integer range 0 to 31;
    --begin
        --indexA := to_integer(unsigned(RegA_addr));
        
        --case indexA is
            --when 0 => RegA_data <= (others =>'0');
            --when 1 to 31 => RegA_data <= registers(indexA);
            --when others => NULL;
        --end case;
    --end process;
    
    --Read_RegB: process(RegB_addr,registers)
        --variable indexB: integer range 0 to 31;
    --begin 
        --indexB := to_integer(unsigned(RegB_addr));
        
        --case indexB is
            --when 0 => RegB_data <= (others =>'0');
            --when 1 to 31 => RegB_data <= registers(indexB);
            --when others => NULL;
        --end case;    
    --end process;
    
end rtl;
