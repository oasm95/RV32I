library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity ProgramCounter is
  generic(
    RESET_ADDR: std_logic_vector:=x"00000040";
    BUS_Width: integer :=32
  );
  port (
    clk: in std_logic;
    Current_addr: out std_logic_vector(BUS_Width-1 downto 0);
    Next_addr: out std_logic_vector(BUS_Width-1 downto 0);
    Jumps: in std_logic_vector(BUS_Width-1 downto 0);
    Except_addr: in std_logic_vector(BUS_Width-1 downto 0);
    JALR: in std_logic_vector(BUS_Width-1 downto 0);
    PC_sel: in std_logic_vector(1 downto 0);
    Stall: in std_logic
  ) ;
end ProgramCounter;

architecture rtl of ProgramCounter is
    signal pc : std_logic_vector(BUS_Width-1 downto 0) := RESET_ADDR;
    signal pc_mux : std_logic_vector(BUS_Width-1 downto 0);
    signal next_instruction : std_logic_vector(BUS_Width-1 downto 0);
    
begin

    PC_update: process (clk)
    begin
        if (rising_edge(clk)) then
            if (Stall /= '1') then
                pc <= pc_mux;
            end if;        
        end if;
    end process;
    
    Sel_PC: process(PC_sel,Jumps,Except_addr,JALR,next_instruction)
    begin
        case PC_sel is
            when PC_JMP => pc_mux <= Jumps;
            when PC_TRAP => pc_mux <= Except_addr;
            when PC_NEXTPC => pc_mux <= next_instruction;
            when PC_JALR => pc_mux <= JALR;
            when others => NULL; 
        end case;
    end process;
    
    Next_instr: process(pc)
    begin
        next_instruction <= std_logic_vector(unsigned(pc) + 4);
    end process;
    
Current_addr<= pc;
Next_addr<=next_instruction;

end rtl; 
