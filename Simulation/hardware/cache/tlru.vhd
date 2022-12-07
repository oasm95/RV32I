library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.math_real.log2;

entity tlru is
	generic
	(
		WAYS:integer:=16
	);
    port 
    (
        InState: in std_logic_vector(WAYS-2 downto 0);
        Match_vec: in std_logic_vector(WAYS-1 downto 0);
        HitOutState: out std_logic_vector(WAYS-2 downto 0);
        MissOutState: out std_logic_vector(WAYS-2 downto 0);
        VictimWay: out  std_logic_vector(integer(log2(real(WAYS)))-1 downto 0)
    );
end tlru;

architecture rtl of tlru is

begin

    WAYS2: if WAYS = 2 generate
    begin
        HitOutState <= not InState;
        MissOutState <= not InState;
        VictimWay <= InState;
    end generate WAYS2;

    WAYS4: if WAYS = 4 generate
	begin
		victim:process(InState)
			variable b0: std_logic;
			variable b1: std_logic;
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
		begin
			b1:= I(0);

			b0:= (not I(0)) and I(1);
			b0:= b0 or (I(0) and I(2));

			Victimway <= b1 & b0;
		end process;

		MissOut4:process(Instate)
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
		begin
			MissOutState(0) <= not I(0);
			MissOutState(1) <= I(0) xnor I(1);
			MissOutState(2) <= I(0) xor I(2);
		end process;

        HitOut4:process(Match_vec,InState)
            variable match: std_logic_vector(3 downto 0);
        begin
            HitOutState <= InState;
            match := Match_vec;
            case match is
                when "0001" =>
                        HitOutState(0) <= '1';
                        HitOutState(1) <= '1';
                when "0010" =>
                        HitOutState(0) <= '1';
                        HitOutState(1) <= '0';
                when "0100" =>
                        HitOutState(0) <= '0';
                        HitOutState(2) <= '1';
                when "1000" =>
                        HitOutState(0) <= '0';
                        HitOutState(2) <= '0';
                when others => HitOutState <= (others => '-');
            end case;
        end process;
    end generate WAYS4;

    WAYS8: if WAYS = 8 generate
	begin
		
		victim:process(InState)
			variable b0: std_logic;
			variable b1: std_logic;
			variable b2: std_logic;
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
		begin
			b2:= I(0);

			b1:= (not I(0)) and I(1);
			b1:= b1 or (I(0) and I(2));

			b0:=(not i(0))and(not i(1))and(i(3));
			b0:= b0 or ((not i(0))and(i(1))and(i(4)));
			b0:= b0 or ( i(0) and (not i(2)) and i(5) );
			b0:= b0 or (i(0) and i(2) and i(6));

			Victimway <= b2 & b1 & b0;
		end process;

		MissOut8:process(Instate)
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
			variable cond3: std_logic_vector(1 downto 0);
			variable cond4: std_logic_vector(1 downto 0);
			variable cond5: std_logic_vector(1 downto 0);
			variable cond6: std_logic_vector(1 downto 0);
		begin
			cond3:= I(0) & I(1);
			cond4:= I(0) & I(1);
			cond5:= I(0) & I(2);
			cond6:= I(0) & I(2);
			MissOutState(0) <= not I(0);
			MissOutState(1) <= I(0) xnor I(1);
			MissOutState(2) <= I(0) xor I(2);
			if cond3 = b"00" then MissOutState(3)<= not I(3);
			else MissOutState(3)<= I(3); end if;
			if cond4 = b"01" then MissOutState(4)<= not I(4);
			else MissOutState(4)<= I(4); end if;
			if cond5 = b"10" then MissOutState(5)<= not I(5);
			else MissOutState(5)<= I(5); end if;
			if cond6 = b"11" then MissOutState(6)<= not I(6);
			else MissOutState(6)<= I(6); end if;
		end process;

		HitOut8:process(InState,Match_vec)
			variable match: std_logic_vector(7 downto 0); 
		begin
			HitOutState <= InState;
			match := Match_vec;
			case (match) is
				when "00000001" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
				when "00000010" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
				when "00000100" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
				when "00001000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
				when "00010000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
				when "00100000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
				when "01000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
				when "10000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
				when others => HitOutState <= (others => '-');
			end case;
		end process;
    end generate WAYS8;

    WAYS16: if WAYS = 16 generate
	begin

		victim:process(InState)
			variable b0: std_logic;
			variable b1: std_logic;
			variable b2: std_logic;
			variable b3: std_logic;
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
		begin
			b3:= I(0);

			b2:= (not I(0)) and I(1);
			b2:= b2 or (I(0) and I(2));

			b1:=(not i(0))and(not i(1))and(i(3));
			b1:= b1 or ((not i(0))and(i(1))and(i(4)));
			b1:= b1 or ( i(0) and (not i(2)) and i(5) );
			b1:= b1 or (i(0) and i(2) and i(6));

			b0:= 	    not i(0) and not i(1) and not i(3) and i(7);
			b0:= b0 or (not i(0) and not i(1) and i(3) and i(8));
			b0:= b0 or (not i(0) and i(1) and not i(4) and i(9));
			b0:= b0 or (not i(0) and i(1) and i(4) and i(10));
			b0:= b0 or (i(0) and not i(2) and not i(5) and i(11));
			b0:= b0 or (i(0) and not i(2) and i(5) and i(12));
			b0:= b0 or (i(0) and i(2) and not i(6) and i(13));
			b0:= b0 or (i(0) and i(2) and i(6) and i(14));

			Victimway <= b3 & b2 & b1 & b0;
		end process;

		MissOut16:process(Instate)
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
			variable cond3: std_logic_vector(1 downto 0);
			variable cond4: std_logic_vector(1 downto 0);
			variable cond5: std_logic_vector(1 downto 0);
			variable cond6: std_logic_vector(1 downto 0);
			variable cond7: std_logic_vector(2 downto 0);
			variable cond8: std_logic_vector(2 downto 0);
			variable cond9: std_logic_vector(2 downto 0);
			variable cond10: std_logic_vector(2 downto 0);
			variable cond11: std_logic_vector(2 downto 0);
			variable cond12: std_logic_vector(2 downto 0);
			variable cond13: std_logic_vector(2 downto 0);
			variable cond14: std_logic_vector(2 downto 0);
		begin
			cond3:= I(0) & I(1);
			cond4:= I(0) & I(1);
			cond5:= I(0) & I(2);
			cond6:= I(0) & I(2);
			cond7:= I(0) & I(1) & I(3);
			cond8:= I(0) & I(1) & I(3);
			cond9:= I(0) & I(1) & I(4);
			cond10:= I(0) & I(1) & I(4);
			cond11:= I(0) & I(2) & I(5);
			cond12:= I(0) & I(2) & I(5);
			cond13:= I(0) & I(2) & I(6);
			cond14:= I(0) & I(2) & I(6);
			MissOutState(0) <= not I(0);
			MissOutState(1) <= I(0) xnor I(1);
			MissOutState(2) <= I(0) xor I(2);
			if cond3 = b"00" then MissOutState(3)<= not I(3);
			else MissOutState(3)<= I(3); end if;
			if cond4 = b"01" then MissOutState(4)<= not I(4);
			else MissOutState(4)<= I(4); end if;
			if cond5 = b"10" then MissOutState(5)<= not I(5);
			else MissOutState(5)<= I(5); end if;
			if cond6 = b"11" then MissOutState(6)<= not I(6);
			else MissOutState(6)<= I(6); end if;
			if cond7 = b"000" then MissOutState(7)<= not I(7);
			else MissOutState(7)<= I(7); end if;
			if cond8 = b"001" then MissOutState(8)<= not I(8);
			else MissOutState(8)<= I(8); end if;
			if cond9 = b"010" then MissOutState(9)<= not I(9);
			else MissOutState(9)<= I(9); end if;
			if cond10 = b"011" then MissOutState(10)<= not I(10);
			else MissOutState(10)<= I(10); end if;
			if cond11 = b"100" then MissOutState(11)<= not I(11);
			else MissOutState(11)<= I(11); end if;
			if cond12 = b"101" then MissOutState(12)<= not I(12);
			else MissOutState(12)<= I(12); end if;
			if cond13 = b"110" then MissOutState(13)<= not I(13);
			else MissOutState(13)<= I(13); end if;
			if cond14 = b"111" then MissOutState(14)<= not I(14);
			else MissOutState(14)<= I(14); end if;
		end process;

		HitOut16:process(InState,Match_vec)
			variable match: std_logic_vector(15 downto 0); 
		begin
			HitOutState <= InState;
			match := Match_vec;
			case (match) is
				when "0000000000000001" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '1';
				when "0000000000000010" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '0';
				when "0000000000000100" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '1';
				when "0000000000001000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '0';
				when "0000000000010000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '1';
				when "0000000000100000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '0';
				when "0000000001000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '1';
				when "0000000010000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '0';
				when "0000000100000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '1';
				when "0000001000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '0';
				when "0000010000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '1';
				when "0000100000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '0';
				when "0001000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '1';
				when "0010000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '0';
				when "0100000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '1';
				when "1000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '0';
				when others => HitOutState <= (others => '-');
			end case;
		end process;
    end generate WAYS16;

    WAYS32: if WAYS = 32 generate
	begin
		
		victim:process(InState)
			variable b0: std_logic;
			variable b1: std_logic;
			variable b2: std_logic;
			variable b3: std_logic;
			variable b4: std_logic;
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
		begin
			b4:= I(0);

			b3:= (not I(0)) and I(1);
			b3:= b3 or (I(0) and I(2));

			b2:=(not i(0))and(not i(1))and(i(3));
			b2:= b2 or ((not i(0))and(i(1))and(i(4)));
			b2:= b2 or ( i(0) and (not i(2)) and i(5) );
			b2:= b2 or (i(0) and i(2) and i(6));

			b1:= 	    not i(0) and not i(1) and not i(3) and i(7);
			b1:= b1 or (not i(0) and not i(1) and i(3) and i(8));
			b1:= b1 or (not i(0) and i(1) and not i(4) and i(9));
			b1:= b1 or (not i(0) and i(1) and i(4) and i(10));
			b1:= b1 or (i(0) and not i(2) and not i(5) and i(11));
			b1:= b1 or (i(0) and not i(2) and i(5) and i(12));
			b1:= b1 or (i(0) and i(2) and not i(6) and i(13));
			b1:= b1 or (i(0) and i(2) and i(6) and i(14));

			b0:=        not i(0) and not i(1) and not i(3) and not i(7) and i(15);
			b0:= b0 or (not i(0) and not i(1) and not i(3) and i(7) and i(16));
			b0:= b0 or (not i(0) and not i(1) and i(3) and not i(8) and i(17));
			b0:= b0 or (not i(0) and not i(1) and i(3) and i(8) and i(18));
			b0:= b0 or (not i(0) and i(1) and not i(4) and not i(9) and i(19));
			b0:= b0 or (not i(0) and i(1) and not i(4) and i(9) and i(20));
			b0:= b0 or (not i(0) and i(1) and i(4) and not i(10) and i(21));
			b0:= b0 or (not i(0) and i(1) and i(4) and i(10) and i(22));
			b0:= b0 or ( i(0) and not i(2) and not i(5) and not i(11) and i(23));
			b0:= b0 or ( i(0) and not i(2) and not i(5) and i(11) and i(24));
			b0:= b0 or ( i(0) and not i(2) and i(5) and not i(12) and i(25));
			b0:= b0 or ( i(0) and not i(2) and i(5) and i(12) and i(26));
			b0:= b0 or ( i(0) and i(2) and not i(6) and not i(13) and i(27));
			b0:= b0 or ( i(0) and i(2) and not i(6) and i(13) and i(28));
			b0:= b0 or ( i(0) and i(2) and i(6) and not i(14) and i(29));
			b0:= b0 or ( i(0) and i(2) and i(6) and i(14) and i(30));

			Victimway <= b4 & b3 & b2 & b1 & b0;
		end process;

		MissOut32:process(Instate)
			alias I: std_logic_vector(WAYS-2 downto 0) is InState;
			variable cond3: std_logic_vector(1 downto 0);
			variable cond4: std_logic_vector(1 downto 0);
			variable cond5: std_logic_vector(1 downto 0);
			variable cond6: std_logic_vector(1 downto 0);
			variable cond7: std_logic_vector(2 downto 0);
			variable cond8: std_logic_vector(2 downto 0);
			variable cond9: std_logic_vector(2 downto 0);
			variable cond10: std_logic_vector(2 downto 0);
			variable cond11: std_logic_vector(2 downto 0);
			variable cond12: std_logic_vector(2 downto 0);
			variable cond13: std_logic_vector(2 downto 0);
			variable cond14: std_logic_vector(2 downto 0);
			variable cond15: std_logic_vector(3 downto 0);
			variable cond16: std_logic_vector(3 downto 0);
			variable cond17: std_logic_vector(3 downto 0);
			variable cond18: std_logic_vector(3 downto 0);
			variable cond19: std_logic_vector(3 downto 0);
			variable cond20: std_logic_vector(3 downto 0);
			variable cond21: std_logic_vector(3 downto 0);
			variable cond22: std_logic_vector(3 downto 0);
			variable cond23: std_logic_vector(3 downto 0);
			variable cond24: std_logic_vector(3 downto 0);
			variable cond25: std_logic_vector(3 downto 0);
			variable cond26: std_logic_vector(3 downto 0);
			variable cond27: std_logic_vector(3 downto 0);
			variable cond28: std_logic_vector(3 downto 0);
			variable cond29: std_logic_vector(3 downto 0);
			variable cond30: std_logic_vector(3 downto 0);
		begin
			cond3:= I(0) & I(1);
			cond4:= I(0) & I(1);
			cond5:= I(0) & I(2);
			cond6:= I(0) & I(2);
			cond7:= I(0) & I(1) & I(3);
			cond8:= I(0) & I(1) & I(3);
			cond9:= I(0) & I(1) & I(4);
			cond10:= I(0) & I(1) & I(4);
			cond11:= I(0) & I(2) & I(5);
			cond12:= I(0) & I(2) & I(5);
			cond13:= I(0) & I(2) & I(6);
			cond14:= I(0) & I(2) & I(6);
			cond15:= I(0) & I(1) & I(3) & I(7);
			cond16:= I(0) & I(1) & I(3) & I(7);
			cond17:= I(0) & I(1) & I(3) & I(8);
			cond18:= I(0) & I(1) & I(3) & I(8);
			cond19:= I(0) & I(1) & I(4) & I(9);
			cond20:= I(0) & I(1) & I(4) & I(9);
			cond21:= I(0) & I(1) & I(4) & I(10);
			cond22:= I(0) & I(1) & I(4) & I(10);
			cond23:= I(0) & I(2) & I(5) & I(11);
			cond24:= I(0) & I(2) & I(5) & I(11);
			cond25:= I(0) & I(2) & I(5) & I(12);
			cond26:= I(0) & I(2) & I(5) & I(12);
			cond27:= I(0) & I(2) & I(6) & I(13);
			cond28:= I(0) & I(2) & I(6) & I(13);
			cond29:= I(0) & I(2) & I(6) & I(14);
			cond30:= I(0) & I(2) & I(6) & I(14);
			MissOutState(0) <= not I(0);
			MissOutState(1) <= I(0) xnor I(1);
			MissOutState(2) <= I(0) xor I(2);
			if cond3 = b"00" then MissOutState(3)<= not I(3);
			else MissOutState(3)<= I(3); end if;
			if cond4 = b"01" then MissOutState(4)<= not I(4);
			else MissOutState(4)<= I(4); end if;
			if cond5 = b"10" then MissOutState(5)<= not I(5);
			else MissOutState(5)<= I(5); end if;
			if cond6 = b"11" then MissOutState(6)<= not I(6);
			else MissOutState(6)<= I(6); end if;
			if cond7 = b"000" then MissOutState(7)<= not I(7);
			else MissOutState(7)<= I(7); end if;
			if cond8 = b"001" then MissOutState(8)<= not I(8);
			else MissOutState(8)<= I(8); end if;
			if cond9 = b"010" then MissOutState(9)<= not I(9);
			else MissOutState(9)<= I(9); end if;
			if cond10 = b"011" then MissOutState(10)<= not I(10);
			else MissOutState(10)<= I(10); end if;
			if cond11 = b"100" then MissOutState(11)<= not I(11);
			else MissOutState(11)<= I(11); end if;
			if cond12 = b"101" then MissOutState(12)<= not I(12);
			else MissOutState(12)<= I(12); end if;
			if cond13 = b"110" then MissOutState(13)<= not I(13);
			else MissOutState(13)<= I(13); end if;
			if cond14 = b"111" then MissOutState(14)<= not I(14);
			else MissOutState(14)<= I(14); end if;
			if cond15 = b"0000" then MissOutState(15)<= not I(15);
			else MissOutState(15)<= I(15); end if;
			if cond16 = b"0001" then MissOutState(16)<= not I(16);
			else MissOutState(16)<= I(16); end if;
			if cond17 = b"0010" then MissOutState(17)<= not I(17);
			else MissOutState(17)<= I(17); end if;
			if cond18 = b"0011" then MissOutState(18)<= not I(18);
			else MissOutState(18)<= I(18); end if;
			if cond19 = b"0100" then MissOutState(19)<= not I(19);
			else MissOutState(19)<= I(19); end if;
			if cond20 = b"0101" then MissOutState(20)<= not I(20);
			else MissOutState(20)<= I(20); end if;
			if cond21 = b"0110" then MissOutState(21)<= not I(21);
			else MissOutState(21)<= I(21); end if;
			if cond22 = b"0111" then MissOutState(22)<= not I(22);
			else MissOutState(22)<= I(22); end if;
			if cond23 = b"1000" then MissOutState(23)<= not I(23);
			else MissOutState(23)<= I(23); end if;
			if cond24 = b"1001" then MissOutState(24)<= not I(24);
			else MissOutState(24)<= I(24); end if;
			if cond25 = b"1010" then MissOutState(25)<= not I(25);
			else MissOutState(25)<= I(25); end if;
			if cond26 = b"1011" then MissOutState(26)<= not I(26);
			else MissOutState(26)<= I(26); end if;
			if cond27 = b"1100" then MissOutState(27)<= not I(27);
			else MissOutState(27)<= I(27); end if;
			if cond28 = b"1101" then MissOutState(28)<= not I(28);
			else MissOutState(28)<= I(28); end if;
			if cond29 = b"1110" then MissOutState(29)<= not I(29);
			else MissOutState(29)<= I(29); end if;
			if cond30 = b"1111" then MissOutState(30)<= not I(30);
			else MissOutState(30)<= I(30); end if;
		end process;

		HitOut32:process(InState,Match_vec)
			variable match: std_logic_vector(31 downto 0); 
		begin
			HitOutState <= InState;
			match := Match_vec;
			case (match) is
				when "00000000000000000000000000000001" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '1';
					HitOutState(15) <= '1';
				when "00000000000000000000000000000010" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '1';
					HitOutState(15) <= '0';
				when "00000000000000000000000000000100" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '0';
					HitOutState(16) <= '1';
				when "00000000000000000000000000001000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '1';
					HitOutState(7) <= '0';
					HitOutState(16) <= '0';
				when "00000000000000000000000000010000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '1';
					HitOutState(17) <= '1';
				when "00000000000000000000000000100000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '1';
					HitOutState(17) <= '0';
				when "00000000000000000000000001000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '0';
					HitOutState(18) <= '1';
				when "00000000000000000000000010000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '1';
					HitOutState(3) <= '0';
					HitOutState(8) <= '0';
					HitOutState(18) <= '0';
				when "00000000000000000000000100000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '1';
					HitOutState(19) <= '1';
				when "00000000000000000000001000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '1';
					HitOutState(19) <= '0';
				when "00000000000000000000010000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '0';
					HitOutState(20) <= '1';
				when "00000000000000000000100000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '1';
					HitOutState(9) <= '0';
					HitOutState(20) <= '0';
				when "00000000000000000001000000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '1';
					HitOutState(21) <= '1';
				when "00000000000000000010000000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '1';
					HitOutState(21) <= '0';
				when "00000000000000000100000000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '0';
					HitOutState(22) <= '1';
				when "00000000000000001000000000000000" =>
					HitOutState(0) <= '1';
					HitOutState(1) <= '0';
					HitOutState(4) <= '0';
					HitOutState(10) <= '0';
					HitOutState(22) <= '0';
				when "00000000000000010000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '1';
					HitOutState(23) <= '1';
				when "00000000000000100000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '1';
					HitOutState(23) <= '0';
				when "00000000000001000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '0';
					HitOutState(24) <= '1';
				when "00000000000010000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '1';
					HitOutState(11) <= '0';
					HitOutState(24) <= '0';
				when "00000000000100000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '1';
					HitOutState(25) <= '1';
				when "00000000001000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '1';
					HitOutState(25) <= '0';
				when "00000000010000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '0';
					HitOutState(26) <= '1';
				when "00000000100000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '1';
					HitOutState(5) <= '0';
					HitOutState(12) <= '0';
					HitOutState(26) <= '0';
				when "00000001000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '1';
					HitOutState(27) <= '1';
				when "00000010000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '1';
					HitOutState(27) <= '0';
				when "00000100000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '0';
					HitOutState(28) <= '1';
				when "00001000000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '1';
					HitOutState(13) <= '0';
					HitOutState(28) <= '0';
				when "00010000000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '1';
					HitOutState(29) <= '1';
				when "00100000000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '1';
					HitOutState(29) <= '0';
				when "01000000000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '0';
					HitOutState(30) <= '1';
				when "10000000000000000000000000000000" =>
					HitOutState(0) <= '0';
					HitOutState(2) <= '0';
					HitOutState(6) <= '0';
					HitOutState(14) <= '0';
					HitOutState(30) <= '0';
				when others => HitOutState <= (others => '-');
			end case;
		end process;
    end generate WAYS32;

end architecture;
