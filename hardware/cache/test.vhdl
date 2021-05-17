library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
	port (
		clk : in std_logic;
        hitv : in std_logic_vector(3 downto 0);
        indexv: in std_logic_vector(3 downto 0);
        dataline: out std_logic_vector(15 downto 0)
	);
end test;

architecture rtl of test is

	type CACHE_DATA is array (3 downto 0, 7 downto 0) of std_logic_vector(15 downto 0);
    --type W_DATA is array(3 downto 0) of CACHE_DATA;
    signal data: CACHE_DATA;
begin

	waylogic: for way in 0 to 3 generate
	begin

		process (hitv,data)
			variable index: integer;
		begin
			index := to_integer(unsigned(indexv));

			if hitv(way) = '1' then
				dataline <= data(way,index);
			else
				dataline <= (others => 'Z');
			end if;
		end process;
	end generate waylogic;

end architecture;