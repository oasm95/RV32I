library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.math_real.log2;

entity Cache is
	generic(
		CACHE_TYPE: string:= "DATA";
		MEMBUS_Width: integer:=64;
		CPUBUS_Width: integer:=32;
		SIZE: integer:=512;
		BLOCK_SIZE: integer:=8;
		ASSOSIATIVITY: integer:=4;
		REPL_POL: string:="FIFO"    
	);
	port(
		clkmem: in std_logic;
		Extern_Data_Store: out std_logic_vector(MEMBUS_Width-1 downto 0);
		Extern_Data_Load: in std_logic_vector(MEMBUS_Width-1 downto 0);
		Extern_Mem_addr: out std_logic_vector(CPUBUS_Width-1 downto 0);
		Extern_MemAccess: out std_logic;
		Extern_Wen: out std_logic;
		Extern_Done_Store: in std_logic;
		Extern_Done_Load: in std_logic;
		Data_Load: out std_logic_vector(CPUBUS_Width-1 downto 0);
		Data_Store: in std_logic_vector(CPUBUS_Width-1 downto 0);
		Mem_addr: in std_logic_vector(CPUBUS_Width-1 downto 0);
		Wen: in std_logic;
		MemAccess: in std_logic;
		Continue: out std_logic
	);
  
end Cache;

architecture directmapped of Cache is

	constant lines: integer:= SIZE/BLOCK_SIZE;
	constant offsetbits: integer:= integer(log2(real(BLOCK_SIZE)));
	constant tagbits: integer:= offsetbits+integer(log2(real(lines)));
	constant busbits: integer:= integer(log2(real(CPUBUS_Width/8)));
	constant mwords_per_block: integer :=BLOCK_SIZE/(MEMBUS_Width/8);
	
	type CACHE_DATA is array (lines-1 downto 0) of std_logic_vector(8*BLOCK_SIZE -1 downto 0);
	type CACHE_TAG is array (lines-1 downto 0) of std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
	type CACHE_VALID is array (lines-1 downto 0) of std_logic;

	signal data: CACHE_DATA;
	signal tags: CACHE_TAG;
	signal valid: CACHE_VALID:=(others => '0');

	signal hit: std_logic;
	
	signal dataline: std_logic_vector(8*BLOCK_SIZE -1 downto 0);
	
begin

	Continue<= hit and MemAccess;	
	
	DetectHit: process(Mem_addr,tags,valid)
		variable tag: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
		variable index: integer;
		variable eqtags: std_logic;
	begin
		index := to_integer(unsigned(Mem_addr(tagbits-1 downto offsetbits)));
		tag:= Mem_addr(CPUBUS_Width-1 downto tagbits);
		
		if tag = tags(index) then
			eqtags:='1';
		else
			eqtags:='0';
		end if;
		
		dataline<= data(index);	
		hit<= eqtags and valid(index);
	end process;
	
	DispatchData: process(dataline,Mem_addr)
		variable selword: integer;
	begin
		selword := to_integer(unsigned(Mem_addr(offsetbits-1 downto busbits)));
		Data_Load<= dataline(selword*CPUBUS_Width + CPUBUS_Width -1 downto selword*CPUBUS_Width);
	end process;

	
	ImplementDirtyBit: if CACHE_TYPE = "DATA" generate
		type CACHE_DIRTY is array (lines-1 downto 0) of std_logic;
		signal dirty: CACHE_DIRTY:=(others => '0');
		signal cntl: integer range 0 to mwords_per_block-1:=0;
		signal cnts: integer range 0 to mwords_per_block-1:=0;
	begin

		ExternalAddr: process(Mem_addr,tags,dirty)
			variable index: integer;
			variable tag: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
		begin
			index := to_integer(unsigned(Mem_addr(tagbits-1 downto offsetbits)));

			if dirty(index) = '1' then
				tag := tags(index);
			else
				tag:= Mem_addr(CPUBUS_Width-1 downto tagbits);
			end if;
				
			Extern_Mem_addr<= tag & Mem_addr(tagbits-1 downto 0);
		end process;	

		process(clkmem,Mem_addr)
			variable index: integer;
			variable tag: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
			variable donestoring: boolean:=false;
			variable selword: integer;
		begin
			index := to_integer(unsigned(Mem_addr(tagbits-1 downto offsetbits)));
			tag:= Mem_addr(CPUBUS_Width-1 downto tagbits);
			selword := to_integer(unsigned(Mem_addr(offsetbits-1 downto busbits)));			
			Extern_Data_Store<=data(index)(cnts*MEMBUS_Width + MEMBUS_Width -1 downto cnts*MEMBUS_Width);
			
			if rising_edge(clkmem)then
				Extern_MemAccess<='0';
				Extern_Wen<='0';
				if hit = '0'and MemAccess='1' then
					Extern_MemAccess<= '1';	
					
					if dirty(index) = '1' then
						Extern_Wen<='1';
						if Extern_Done_Store = '1'then
							if cnts = (mwords_per_block-1) then
								Extern_Wen<='0';
								dirty(index) <= '0';
								cnts <= 0;
							else
								cnts <= cnts+1;
							end if;					
						end if;
					end if;							
									
					if Extern_Done_Load = '1' then
						data(index)(cntl*MEMBUS_Width + MEMBUS_Width -1 downto cntl*MEMBUS_Width) <= Extern_Data_Load;
						if cntl = (mwords_per_block-1) then
							tags(index) <= tag;
							valid(index) <= '1';
							cntl <= 0;
						else
							cntl <= cntl+1;
						end if;
						
					end if;
											
				elsif hit = '1'and MemAccess='1' and Wen = '1' then
					data(index)(selword*CPUBUS_Width + CPUBUS_Width -1 downto selword*CPUBUS_Width)<= Data_Store;
					dirty(index)<='1';
				end if;
			end if;		
		end process;	
		
	elsif CACHE_TYPE = "INSTRUCTION" generate
		signal cnt: integer range 0 to mwords_per_block-1:=0;
	begin

		Extern_Mem_addr<=Mem_addr;
		
		process(clkmem,Mem_addr)
			variable index: integer;
			variable tag: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
		begin
			index := to_integer(unsigned(Mem_addr(tagbits-1 downto offsetbits)));
			tag:= Mem_addr(CPUBUS_Width-1 downto tagbits);			
			
			if rising_edge(clkmem)then
				Extern_MemAccess<='0';
				if hit = '0'and MemAccess='1' then
					Extern_MemAccess<= '1';					
					if Extern_Done_Load = '1' then
						data(index)(cnt*MEMBUS_Width + MEMBUS_Width -1 downto cnt*MEMBUS_Width) <= Extern_Data_Load;
						if cnt = (mwords_per_block-1) then
							tags(index) <= tag;
							valid(index) <= '1';
							cnt <= 0;
						else
							cnt <= cnt+1;
						end if;
					end if;
				end if;
			end if;		
		end process;

	end generate ImplementDirtyBit;
end directmapped;

architecture setway of Cache is

	function orallbits(vec: std_logic_vector) return std_logic is
        variable result: std_logic :='0';
    begin
        for i in vec'range loop
            result:= result or vec(i);
        end loop;
        return result;
    end;

	constant lines: integer:= SIZE/(BLOCK_SIZE*ASSOSIATIVITY);
	constant offsetbits: integer:= integer(log2(real(BLOCK_SIZE)));
	constant tagbits: integer:= offsetbits+integer(log2(real(lines)));
	constant busbits: integer:= integer(log2(real(CPUBUS_Width/8)));
	constant mwords_per_block: integer :=BLOCK_SIZE/(MEMBUS_Width/8);
	constant waybits: integer:= integer(log2(real(ASSOSIATIVITY)));
	
	type CACHE_DATA is array (lines-1 downto 0) of std_logic_vector(8*BLOCK_SIZE -1 downto 0);
	type W_DATA is array(ASSOSIATIVITY-1 downto 0) of CACHE_DATA;
	
	type CACHE_TAG is array (lines-1 downto 0) of std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
	type W_TAG is array(ASSOSIATIVITY-1 downto 0) of CACHE_TAG;
	
	type CACHE_VALID is array (lines-1 downto 0) of std_logic;
	type W_VALID is array(ASSOSIATIVITY-1 downto 0) of CACHE_VALID;

	signal data: W_DATA;
	signal tags: W_TAG;
	signal valid: W_VALID := (others => (others => '0'));

	signal hit: std_logic;	
	signal hitv: std_logic_vector(ASSOSIATIVITY -1 downto 0);
	signal dataline: std_logic_vector(8*BLOCK_SIZE -1 downto 0);
	
	signal indexv: std_logic_vector(tagbits-offsetbits-1 downto 0);
	signal tag: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
	signal waytoreplace: integer range 0 to ASSOSIATIVITY -1;
	signal s_extern_maccess: std_logic;

begin
	Continue<= hit and MemAccess;	
	hit<= orallbits(hitv);
	indexv <= Mem_addr(tagbits-1 downto offsetbits);
	tag <= Mem_addr(CPUBUS_Width-1 downto tagbits);

	DispatchData: process(dataline,Mem_addr)
		variable selword: integer;
	begin
		selword := to_integer(unsigned(Mem_addr(offsetbits-1 downto busbits)));
		Data_Load<= dataline(selword*CPUBUS_Width + CPUBUS_Width -1 downto selword*CPUBUS_Width);
	end process;

	waylogic: for way in 0 to ASSOSIATIVITY -1 generate
	begin

		process(indexv,tag,valid,tags)
			variable index: integer;
			variable eqtag: std_logic;
		begin
			index := to_integer(unsigned(indexv));
			if tag = tags(way)(index) then
				eqtag:= '1';
			else
				eqtag:= '0';
			end if;

			hitv(way) <= eqtag and valid(way)(index);
		end process;

		process (indexv,hitv,data)
			variable index: integer;
		begin
			index := to_integer(unsigned(indexv));

			if hitv(way) = '1' then
				dataline <= data(way)(index);
			else
				dataline <= (others => 'Z');
			end if;
		end process;
	end generate waylogic;

	REPLACE_POLICY_FIFO:if REPL_POL = "FIFO" generate
		type FIFO_CNT is array (lines-1 downto 0) of std_logic_vector(waybits-1 downto 0);
		signal cnts: FIFO_CNT:= (others => (others => '0'));
		signal nextcnt: std_logic_vector(waybits-1 downto 0);
	begin

		process(indexv,cnts)
			variable index: integer;
		begin
			index := to_integer(unsigned(indexv));
			waytoreplace <= to_integer(unsigned(cnts(index)));
			nextcnt <= std_logic_vector(unsigned(cnts(index)) + 1);
		end process;

		process(s_extern_maccess,indexv)
			variable index: integer;
		begin
			index := to_integer(unsigned(indexv));
			if falling_edge(s_extern_maccess) then
				cnts(index) <= nextcnt;
			end if;
		end process;	
	end generate REPLACE_POLICY_FIFO;

	REPLACE_POLICY_TLRU:if REPL_POL = "LRU" generate
		type LRU_STATES is array (lines-1 downto 0) of std_logic_vector(ASSOSIATIVITY - 2 downto 0);
		signal states: LRU_STATES:= (others => (others => '0'));
		signal wayvec: std_logic_vector(waybits-1 downto 0);
		signal instate: std_logic_vector(ASSOSIATIVITY - 2 downto 0);
		signal hitstate: std_logic_vector(ASSOSIATIVITY - 2 downto 0);
		signal missstate: std_logic_vector(ASSOSIATIVITY - 2 downto 0);
		signal hitreg: std_logic;
		signal state: std_logic_vector(ASSOSIATIVITY - 2 downto 0);
	begin
		TREE: entity work.tlru(rtl)
			generic map(WAYS => ASSOSIATIVITY)
			port map
			(
				InState => state,
				hitOutState => hitstate,
				missOutState => missstate,
				Match_vec => hitv,
				VictimWay => wayvec
			);
		
			waytoreplace <= to_integer(unsigned(wayvec));
			state<= states(to_integer(unsigned(indexv)));

			process(clkmem)
			begin
				if rising_edge(clkmem) then
					if MemAccess='1' then
						hitreg <= hit;
					end if;
				end if;
			end process;

			process(clkmem,indexv)
				variable index: integer;
			begin
				index:= to_integer(unsigned(indexv));
				if rising_edge(clkmem) then
					if MemAccess = '1' then
						if hit = '1' and hitreg = '1' then
							states(index) <= hitstate;
						elsif hit = '1' and hitreg = '0' then
							states(index) <= missstate;
						end if;
					end if;
				end if;
			end process;

	end generate REPLACE_POLICY_TLRU;

	REPLACE_POLICY_RANDOM_TRIVIUM:if REPL_POL = "RANDOM" generate

		function initialstate(key: std_logic_vector; iv: std_logic_vector) 
		return std_logic_vector is
			variable initstate: std_logic_vector(288 downto 1) :=(
												288 downto 286 => '1',
												285 downto 1 => '0');
		begin
			for i in 0 to 79 loop
				initstate(1+i) := key(1+i);
				initstate(94+i) := iv(1+i);
			end loop;
			return initstate;
		end;

		constant KEY: std_logic_vector(80 downto 1):= x"F6D883C371B1CE912867";
		constant IV: std_logic_vector(80 downto 1):= x"EEE6B530F61A447C0ABC";
		signal randnum: std_logic_vector(waybits-1 downto 0):=(others => '0');
		signal state: std_logic_vector(288 downto 1):= initialstate(KEY,IV);
		signal nextstate:std_logic_vector(288 downto 1);
	
	begin
		
		waytoreplace <= to_integer(unsigned(randnum));

		process(clkmem)
		begin
			if rising_edge(clkmem) then
				if s_extern_maccess = '0' then
					state <= nextstate;
				else
					state <= state;
				end if;
			end if;
		end process;

		process(state)
			variable t1: std_logic_vector(waybits -1 downto 0);
			variable t2: std_logic_vector(waybits -1 downto 0);
			variable t3: std_logic_vector(waybits -1 downto 0);
		begin
			t1:= state(66 downto 66-waybits+1) xor state(93 downto 93-waybits+1);
			t2:= state(162 downto 162-waybits+1) xor state(177 downto 177-waybits+1);
			t3:= state(243 downto 243-waybits+1) xor state(288 downto 288-waybits+1);

			randnum <= t1 xor t2 xor t3;

			t1:= t1 xor (state(91 downto 91-waybits+1) and state(92 downto 92-waybits+1));
			t1:= t1 xor state(171 downto 171-waybits+1);
			t2:= t2 xor (state(175 downto 175-waybits+1) and state(176 downto 176-waybits+1));
			t2:= t2 xor state(264 downto 264-waybits+1);
			t3:= t3 xor (state(286 downto 286-waybits+1) and state(287 downto 287-waybits+1));
			t3:= t3 xor state(69 downto 69-waybits+1);

			nextstate(93 downto 1) <= state(92-waybits+1 downto 1) & t3;
			nextstate(177 downto 94) <=state(176-waybits+1 downto 94) & t1;
			nextstate(288 downto 178) <=state(287-waybits+1 downto 178) & t2;
		end process;

	end generate REPLACE_POLICY_RANDOM_TRIVIUM;


	ImplementDirtyBit: if CACHE_TYPE = "DATA" generate
		type CACHE_DIRTY is array (ASSOSIATIVITY-1 downto 0) of std_logic_vector(lines-1 downto 0);
		signal dirty: CACHE_DIRTY:=(others => (others =>'0'));
		signal cntl: integer range 0 to mwords_per_block-1:=0;
		signal cnts: integer range 0 to mwords_per_block-1:=0;
	begin

		ExternalAddr: process(tags,dirty,indexv,Mem_addr,waytoreplace)
			variable index: integer;
			variable tagmux: std_logic_vector(CPUBUS_Width-tagbits-1 downto 0);
		begin
			index := to_integer(unsigned(indexv));

			if dirty(waytoreplace)(index) = '1' then
				tagmux := tags(waytoreplace)(index);
			else
				tagmux:= Mem_addr(CPUBUS_Width-1 downto tagbits);
			end if;
				
			Extern_Mem_addr<= tagmux & Mem_addr(tagbits-1 downto 0);
		end process;	

		RefillCache:process(clkmem,Mem_addr,indexv,waytoreplace)
			variable index: integer;
			variable donestoring: boolean:=false;
			variable selword: integer;
		begin
			index := to_integer(unsigned(indexv));
			selword := to_integer(unsigned(Mem_addr(offsetbits-1 downto busbits)));			
			Extern_Data_Store<=data(waytoreplace)(index)(cnts*MEMBUS_Width + MEMBUS_Width -1 downto cnts*MEMBUS_Width);
			
			if rising_edge(clkmem)then
				Extern_MemAccess<='0';
				Extern_Wen<='0';
				if hit = '0'and MemAccess='1' then
					Extern_MemAccess<= '1';	
					
					if dirty(waytoreplace)(index) = '1' then
						Extern_Wen<='1';
						if Extern_Done_Store = '1'then
							if cnts = (mwords_per_block-1) then
								Extern_Wen<='0';
								dirty(waytoreplace)(index) <= '0';
								cnts <= 0;
							else
								cnts <= cnts+1;
							end if;					
						end if;
					end if;							
									
					if Extern_Done_Load = '1' then
						data(waytoreplace)(index)(cntl*MEMBUS_Width + MEMBUS_Width -1 downto cntl*MEMBUS_Width) <= Extern_Data_Load;
						if cntl = (mwords_per_block-1) then
							tags(waytoreplace)(index) <= tag;
							valid(waytoreplace)(index) <= '1';
							cntl <= 0;
						else
							cntl <= cntl+1;
						end if;
						
					end if;
											
				elsif hit = '1'and MemAccess='1' and Wen = '1' then
					data(waytoreplace)(index)(selword*CPUBUS_Width + CPUBUS_Width -1 downto selword*CPUBUS_Width)<= Data_Store;
					dirty(waytoreplace)(index)<='1';
				end if;
			end if;		
		end process;	
		
	elsif CACHE_TYPE = "INSTRUCTION" generate
		signal cnt: integer range 0 to mwords_per_block-1:=0;
	begin

		Extern_Mem_addr<=Mem_addr;
		
		RefillCache:process(clkmem,indexv)
			variable index: integer;
		begin
			index := to_integer(unsigned(indexv));		
			
			if rising_edge(clkmem)then
				Extern_MemAccess<='0';
				if hit = '0'and MemAccess='1' then
					Extern_MemAccess<= '1';					
					if Extern_Done_Load = '1' then
						data(waytoreplace)(index)(cnt*MEMBUS_Width + MEMBUS_Width -1 downto cnt*MEMBUS_Width) <= Extern_Data_Load;
						if cnt = (mwords_per_block-1) then
							tags(waytoreplace)(index) <= tag;
							valid(waytoreplace)(index) <= '1';
							cnt <= 0;
						else
							cnt <= cnt+1;
						end if;
					end if;
				end if;
			end if;		
		end process;

	end generate ImplementDirtyBit;
end setway;