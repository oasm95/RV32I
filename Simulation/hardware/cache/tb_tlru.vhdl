library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.math_real.log2;
use std.textio.all;

use work.fortestvector.all;

entity tb_tlru is
end tb_tlru;

architecture sim of tb_tlru is

	constant Tclk: time := 8 fs;
	signal cnt: integer;

	constant WAYS: integer := 16;

	signal instate: std_logic_vector(WAYS-2 downto 0);
	signal match_vec: std_logic_vector(WAYS-1 downto 0);
	signal hitoutstate: std_logic_vector(WAYS-2 downto 0);
	signal Fhitoutstate: std_logic_vector(WAYS-2 downto 0);
	signal missoutstate: std_logic_vector(WAYS-2 downto 0);
	signal Fmissoutstate: std_logic_vector(WAYS-2 downto 0);
	signal victimway:  std_logic_vector(integer(log2(real(WAYS)))-1 downto 0);
	signal Fvictimway:  std_logic_vector(integer(log2(real(WAYS)))-1 downto 0);

begin

	tlru: entity work.tlru(rtl)
	generic map
	(
		WAYS => WAYS
	)
		port map
		(
			InState => instate,
			Match_vec => match_vec,
			HitOutState => hitoutstate,
			MissOutState => missoutstate,
			VictimWay => victimway
		);

	Stimulous_fromfile:process is
		file text_file : text open read_mode is "tv_tlru.txt";
		variable reportval: boolean:= false;
		variable text_line : line;
		variable linecnt: integer :=0;

		variable var1: std_logic_vector(WAYS-1 downto 0);
		variable var2: std_logic_vector(WAYS-1 downto 0);
		variable var3:  std_logic_vector(3 downto 0);
	begin
        
		while not endfile(text_file) loop
			linecnt := linecnt + 1;
			readline(text_file, text_line);
			if text_line.all'length = 0 then
				next;
			end if;
			readdata(text_line,var1,linecnt,reportval);
			instate <= var1(WAYS-2 downto 0);
			readdata(text_line,var2,linecnt,reportval);
			match_vec <= var2;
			readdata(text_line,var1,linecnt,reportval);
			Fhitoutstate <= var1(WAYS-2 downto 0);
			readdata(text_line,var1,linecnt,reportval);
			Fmissoutstate <= var1(WAYS-2 downto 0);
			readdata(text_line,var3,linecnt,reportval);
			Fvictimway <= var3(integer(log2(real(WAYS)))-1 downto 0);

			cnt <= linecnt;
			wait for Tclk/4;

			assert (hitoutstate = Fhitoutstate)
				report "'hitoutstate' not match for line: " & integer'image(linecnt)
				severity warning;
			assert (missoutstate = Fmissoutstate)
				report "'missoutstate' not match for line: " & integer'image(linecnt)
				severity warning;
			assert (victimway = Fvictimway)
				report "'victimway' not match for line: " & integer'image(linecnt)
				severity warning;
			wait for 3*Tclk/4;
		end loop;
		assert false report "Simulation Finished" severity failure;
	end process;
end sim;
