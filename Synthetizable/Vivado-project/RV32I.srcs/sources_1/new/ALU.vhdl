library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;
entity ALU is
  generic(
    BUS_Width: integer:= 32
  );
  port (
    A: in std_logic_vector(BUS_Width-1 downto 0);
    B: in std_logic_vector(BUS_Width-1 downto 0);
    C: out std_logic_vector(BUS_Width-1 downto 0);
    FunSel: in std_logic_vector(3 downto 0);
    Z: out std_logic;
    CondTrue: out std_logic;
    MisalignedW: out std_logic;
    MisalignedHW: out std_logic
  ) ;
end ALU;

architecture rtl of ALU is

    constant ze: std_logic_vector(BUS_Width-1 downto 0) := (others => '0');
    --signal jmpvar: std_logic;
    --signal zero: std_logic;

begin

    SelFun : process( A,B,FunSel)
        variable res: std_logic_vector(BUS_Width-1 downto 0);
        variable jmpvar: std_logic;
        variable zero: std_logic;
        variable alignw: std_logic;
        variable alignhw: std_logic;
    begin
        jmpvar := '0';
        alignw := '0';
        alignhw := '0';

        case( FunSel ) is        
            when ALU_ADD =>
                res := std_logic_vector(signed(A) + signed(B));
                alignw := res(0) or res(1);
                alignhw := res(0);
            when ALU_SUB =>
                res := std_logic_vector(signed(A) - signed(B));
            when ALU_SLL =>
                res := std_logic_vector(shift_left(unsigned(A),to_integer(unsigned(B(4 downto 0)))));
            when ALU_SLT  | x"A" =>
                if (signed(A) < signed(B)) then 
                    jmpvar :='1';
                else 
                    jmpvar :='0';
                end if;
                res := (BUS_Width-1 downto 1 => '0') & jmpvar;
            when ALU_SLTU | x"B" =>
                if (unsigned(A) < unsigned(B)) then 
                    jmpvar :='1';
                else 
                    jmpvar :='0';
                end if;
                res := (BUS_Width-1 downto 1 => '0') & jmpvar;
            when ALU_XOR =>
                res := A xor B;
            when ALU_SRL =>
                res := std_logic_vector(shift_right(unsigned(A),to_integer(unsigned(B(4 downto 0)))));
            when ALU_SRA =>
                res := std_logic_vector(shift_right(signed(A),to_integer(unsigned(B(4 downto 0)))));
            when ALU_OR =>
                res := A or B;
            when ALU_AND =>
                res := A and B;
            when ALU_CLEAR =>
                res := (not A) and B;    
            when ALU_B =>
                res := B; 
            when ALU_A =>
                res := A;
            when others =>
                res := (others =>'-');  
        end case;
        
        if (res = ze) then
            zero := '1';
        else 
            zero := '0';
        end if;
        
        Z <=zero;
        C<= res;
        CondTrue <= jmpvar;
        MisalignedW <= alignw;
        MisalignedHW <= alignhw;
        
    end process ; -- SelFun

end rtl ; --ALU_portsehavALU_portsr
