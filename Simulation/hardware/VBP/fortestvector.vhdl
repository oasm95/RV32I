library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
package fortestvector is
 
    function vec2str(vec: std_logic_vector) return string;
    function str2vec(str: string) return std_logic_vector;
    procedure readdata (L:inout LINE; VALUE: out std_logic_vector; CntL: in integer; rep: in boolean);
    procedure readdata(L:inout LINE; VALUE: out std_logic_vector);
    procedure readdata (L:inout LINE; VALUE: out std_logic; CntL: in integer; rep: in boolean);
    procedure readdata(L:inout LINE; VALUE: out std_logic);
    procedure readdata (L:inout LINE; VALUE: out integer; CntL: in integer; rep: in boolean);
    procedure readdata(L:inout LINE; VALUE: out integer);
   
end package fortestvector;
 
-- Package Body Section
package body fortestvector is
 
    function vec2str(vec: std_logic_vector) return string is
        variable result: string(vec'range);
    begin
        for i in vec'range loop
            case vec(i) is
                when '1' =>  result(i) := '1';
                when '0' =>  result(i) := '0';
                when others =>       result(i) := 'X';
            end case;
        end loop;
        return result;
    end;
    
    function str2vec(str: string) return std_logic_vector is
        variable vec: std_logic_vector(str'high*4 -1 downto 0);
        variable hex: std_logic_vector(3 downto 0);
        variable offset: integer :=0;
    begin
        for i in str'range loop
            case str(i) is
                when '0' => hex := x"0";
                when '1' => hex := x"1";
                when '2' => hex := x"2";
                when '3' => hex := x"3";
                when '4' => hex := x"4";
                when '5' => hex := x"5";
                when '6' => hex := x"6";
                when '7' => hex := x"7";
                when '8' => hex := x"8";
                when '9' => hex := x"9";
                when 'A' | 'a' => hex := x"A";
                when 'B' | 'b' => hex := x"B";
                when 'C' | 'c' => hex := x"C";
                when 'D' | 'd' => hex := x"D";
                when 'E' | 'e' => hex := x"E";
                when 'F' | 'f' => hex := x"F";
                when 'X' | 'x' => hex := "XXXX";
                when others =>  
                    hex := "XXXX";
                    assert false report "Found non-hex character '" & str(i) & "'";  
            end case;
            vec(vec'high - offset downto vec'high - offset - 3) := hex;
            offset := offset + 4;
        end loop;
        return vec;
    end;
    
    procedure readdata(L:inout LINE; VALUE: out std_logic_vector) is
        variable str: string((VALUE'LENGTH)/4 downto 1);
        variable space: character;
        variable ok: boolean;
    begin
            read(L, str);
            read(L, space,ok);
            VALUE := str2vec(str);    
    end;
    
    procedure readdata (L:inout LINE; VALUE: out std_logic_vector; CntL: in integer; rep: in boolean) is
        variable str: string((VALUE'LENGTH)/4 downto 1);
        variable space: character;
        variable ok: boolean;
    begin
    
            read(L, str,ok);
            assert ok
                report "failed to read std_logic_vector size: " & integer'image(VALUE'LENGTH) & " in line: " & integer'image(CntL)
                severity failure;
            read(L, space,ok);
            VALUE := str2vec(str);
            
            if rep then
                report "std_logic_vector size:  " & integer'image(VALUE'LENGTH) & " data: 0x" & str &" "& vec2str(str2vec(str));
            end if;
    end;
    
    procedure readdata(L:inout LINE; VALUE: out std_logic) is
        variable str: character;
        variable space: character;
        variable ok: boolean;
        variable res: std_logic;
    begin
            read(L, str);
            case str is
                when '1' =>res := '1';
                when '0' =>res := '0';
                when 'x' | 'X' => res := 'X';
                when others => res := 'U';
            end case;            
            read(L, space,ok); 
            VALUE := res;
    end;
    
    procedure readdata (L:inout LINE; VALUE: out std_logic; CntL: in integer; rep: in boolean) is
        variable str: character;
        variable space: character;
        variable ok: boolean;
        variable res: std_logic;
    begin
            read(L, str,ok);
            case str is
                when '1' =>res := '1';
                when '0' =>res := '0';
                when 'x' | 'X' => res := 'X';
                when others => res := 'U';
            end case; 
            assert ok
                report "failed to read std_logic in line: " & integer'image(CntL)
                severity failure;
            read(L, space,ok);
            
            if rep then
                report "std_logic data:  " & str;
            end if;            
            VALUE := res;
    end;
    
        procedure readdata(L:inout LINE; VALUE: out integer) is
        variable str: integer;
        variable space: character;
        variable ok: boolean;
    begin
            read(L, str);
            read(L, space,ok);
            VALUE :=  str;    
    end;
    
    procedure readdata (L:inout LINE; VALUE: out integer; CntL: in integer; rep: in boolean) is
        variable str: integer;
        variable space: character;
        variable ok: boolean;
    begin
            read(L, str,ok);
            assert ok
                report "failed to read std_logic in line: " & integer'image(CntL)
                severity failure;
            read(L, space,ok);
            VALUE :=  str;
            
            if rep then
                report "integer data:  " & integer'image(str);
            end if;
    end;
 
end package body fortestvector;
