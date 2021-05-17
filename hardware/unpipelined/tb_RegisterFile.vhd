library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

use work.fortestvector.all;

entity tb_RegisterFile is
end tb_RegisterFile;

architecture sim of tb_RegisterFile is
constant Tclk: time := 1 ns;
signal tbclk,start: std_logic := '0';
signal wen: std_logic;
signal Aaddr: std_logic_vector(4 downto 0);
signal Baddr: std_logic_vector(4 downto 0);
signal Raddr: std_logic_vector(4 downto 0);
signal Adata: std_logic_vector(31 downto 0);
signal Bdata: std_logic_vector(31 downto 0);
signal Rdata: std_logic_vector(31 downto 0);
signal fileAdata: std_logic_vector(31 downto 0);
signal fileBdata: std_logic_vector(31 downto 0);
signal counter: integer;
begin
    Registers: entity work.RegisterFile(rtl)
        generic map(BUS_Width=>32)
        port map(
            clk => tbclk,
            RegA_addr => Aaddr,
            RegB_addr => Baddr,
            RegA_data => Adata,
            RegB_data => Bdata,
            W_data => Rdata,
            W_addr => Raddr,
            W_en => wen
        );
        
    clk_gen: process is
    begin
        wait for Tclk/2;
        tbclk <= not tbclk;
    end process;
    
    
-- testing using a testvectorfile in the form of 
--   integer   std-vector   integer   std-vector  integer  std-vector   std_logic
-- RegA_addr | RegA_data | RegB_addr | RegB_data | W_addr | W_data  |   W_en
    Stimulous_fromfile : process is
        file text_file : text open read_mode is "testvectorRegFile.txt";
        variable text_line : line;
        variable ok : boolean :=false;
        variable linecnt: integer:=0;
        variable addr : integer;
        variable data : std_logic_vector(31 downto 0);
        variable wri_en: std_logic;
    begin
    --init regfile with 0
        Aaddr <= "00000";
        Baddr <= "00000";
        Rdata <= x"00000000";
        wen <= '1';
        for i in 0 to 31 loop
            Raddr <= std_logic_vector(to_unsigned(i,Raddr'length));
            wait for Tclk;
        end loop;
        wait for Tclk;
        wen <= '0';
        wait for 2*Tclk;
        -- reading from files
        while not endfile(text_file) loop
            linecnt := linecnt + 1;
            readline(text_file, text_line);
            if text_line.all'length = 0 then
                next;
            end if;
            
            --test for RegA
            readdata(text_line,addr,linecnt,ok);
            Aaddr <= std_logic_vector(to_unsigned(addr,Aaddr'length));
            readdata(text_line,data,linecnt,ok);
            fileAdata <= data;
                
            --test for RegB
            readdata(text_line,addr,linecnt,ok);
            Baddr <= std_logic_vector(to_unsigned(addr,Baddr'length));
            readdata(text_line,data,linecnt,ok);
            fileBdata <= data;

                
            --test for Write_Port
            readdata(text_line,addr,linecnt,ok);
            Raddr<= std_logic_vector(to_unsigned(addr,Raddr'length));
            readdata(text_line,data,linecnt,ok);
            Rdata <= data;
            readdata(text_line,wri_en,linecnt,ok);
            wen <= wri_en;
            counter <= linecnt;
            
            wait for Tclk/4;
            assert (Bdata = fileBdata)
                report "'Bdata' not match for line: " & integer'image(linecnt)
                severity warning;
            assert (Adata = fileAdata)
                report "'Adata' not match for line: " & integer'image(linecnt)
                severity warning;
            wait for 3*Tclk/4;
            
        end loop;
        assert false report "Simulation Finished" severity failure;
    end process;
end sim;

-- if your_signal = ( your_signal'range => '0' ) then
-- do something
-- end if;
