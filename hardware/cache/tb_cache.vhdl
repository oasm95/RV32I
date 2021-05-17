library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_cache is
end tb_cache;

architecture sim of tb_cache is

	constant Tclk: time := 8 fs;
	signal cnt: integer;

	constant CACHE_TYPE: string:= "DATA";
	constant MEMBUS_Width: integer:=64;
	constant CPUBUS_Width: integer:=32;
	constant SIZE: integer:=512;
	constant BLOCK_SIZE: integer:=8;
	constant ASSOSIATIVITY: integer:=8;
	constant REPL_POL: string:="FIFO";  

	signal clkmem: std_logic:='0';
	signal extern_data_store: std_logic_vector(MEMBUS_Width-1 downto 0);
	signal Fextern_data_store: std_logic_vector(MEMBUS_Width-1 downto 0);
	signal extern_data_load: std_logic_vector(MEMBUS_Width-1 downto 0);
	signal extern_mem_addr: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal Fextern_mem_addr: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal extern_memaccess: std_logic;
	signal Fextern_memaccess: std_logic;
	signal extern_wen: std_logic;
	signal Fextern_wen: std_logic;
	signal extern_done_store: std_logic;
	signal extern_done_load: std_logic;
	signal data_load: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal Fdata_load: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal data_store: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal mem_addr: std_logic_vector(CPUBUS_Width-1 downto 0);
	signal wen: std_logic;
	signal memaccess: std_logic;
	signal continue: std_logic;
	signal Fcontinue: std_logic;

begin

	cache: entity work.cache(setway)
		generic map
		(
			CACHE_TYPE => CACHE_TYPE,
			MEMBUS_Width => MEMBUS_Width,
			CPUBUS_Width => CPUBUS_Width,
			SIZE => SIZE,
			BLOCK_SIZE => BLOCK_SIZE,
			ASSOSIATIVITY => ASSOSIATIVITY,
			REPL_POL => REPL_POL
		)

		port map
		(
			clkmem => clkmem,
			Extern_Data_Store => extern_data_store,
			Extern_Data_Load => extern_data_load,
			Extern_Mem_addr => extern_mem_addr,
			Extern_MemAccess => extern_memaccess,
			Extern_Wen => extern_wen,
			Extern_Done_Store => extern_done_store,
			Extern_Done_Load => extern_done_load,
			Data_Load => data_load,
			Data_Store => data_store,
			Mem_addr => mem_addr,
			Wen => wen,
			MemAccess => memaccess,
			Continue => continue
		);

	process is
	begin
		wait for Tclk/2;
		clkmem <= not clkmem;
	end process;

	Stimulous_fromfile:process is
		file text_file : text open read_mode is "cachetb6.txt";
		variable reportval: boolean:= false;
		variable text_line : line;
		variable linecnt: integer :=0;

		variable var1: std_logic_vector(MEMBUS_Width-1 downto 0);
		variable var2: std_logic_vector(CPUBUS_Width-1 downto 0);
		variable var3: std_logic;
		variable varEMA: std_logic;
	begin
        
		while not endfile(text_file) loop
			linecnt := linecnt + 1;
			readline(text_file, text_line);
			if text_line.all'length = 0 then
				next;
			end if;

			readdata(text_line,var1,linecnt,reportval);
			Fextern_data_store <= var1;
			readdata(text_line,var1,linecnt,reportval);
			extern_data_load <= var1;
			readdata(text_line,var2,linecnt,reportval);
			Fextern_mem_addr <= var2;
			readdata(text_line,var3,linecnt,reportval);
			Fextern_memaccess <= var3;
			varEMA:= var3;
			readdata(text_line,var3,linecnt,reportval);
			Fextern_wen <= var3;
			readdata(text_line,var3,linecnt,reportval);
			extern_done_store <= var3;
			readdata(text_line,var3,linecnt,reportval);
			extern_done_load <= var3;
			readdata(text_line,var2,linecnt,reportval);
			Fdata_load <= var2;
			readdata(text_line,var2,linecnt,reportval);
			data_store <= var2;
			readdata(text_line,var2,linecnt,reportval);
			mem_addr <= var2;
			readdata(text_line,var3,linecnt,reportval);
			wen <= var3;
			readdata(text_line,var3,linecnt,reportval);
			memaccess <= var3;
			readdata(text_line,var3,linecnt,reportval);
			Fcontinue <= var3;

			cnt <= linecnt;
			wait for Tclk/4;
			if varEMA = '1' then
				if extern_done_store = '1' then
					assert (extern_data_store = Fextern_data_store)
						report "'extern_data_store' not match for line: " & integer'image(linecnt)
						severity warning;
				end if;
				assert (extern_mem_addr = Fextern_mem_addr)
					report "'extern_mem_addr' not match for line: " & integer'image(linecnt)
					severity warning;
				--assert (extern_memaccess = Fextern_memaccess)
				--	report "'extern_memaccess' not match for line: " & integer'image(linecnt)
				--	severity warning;
				--assert (extern_wen = Fextern_wen)
				--	report "'extern_wen' not match for line: " & integer'image(linecnt)
				--	severity warning;
			end if;
			if var3 = '1' then
				assert (data_load = Fdata_load)
					report "'data_load' not match for line: " & integer'image(linecnt)
					severity warning;
				assert (continue = Fcontinue)
					report "'continue' not match for line: " & integer'image(linecnt)
					severity warning;
			end if;
			--if linecnt = 1000 then
			--	assert false report "Simulation Finished" severity failure;
			--end if;
			wait for 3*Tclk/4;
		end loop;
		assert false report "Simulation Finished !! (>'o')>" severity failure;
	end process;
end sim;
