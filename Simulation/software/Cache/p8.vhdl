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
