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
