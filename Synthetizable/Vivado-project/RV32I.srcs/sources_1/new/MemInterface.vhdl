library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemInterface is
  generic(
    BUS_Width: integer:=32
  );
  port (
    Extern_Data_Store: out std_logic_vector(BUS_Width-1 downto 0);
    Extern_Data_Load: in std_logic_vector(BUS_Width-1 downto 0);
    Extern_Mem_addr: out std_logic_vector(BUS_Width-1 downto 0);
    Data_Load: out std_logic_vector(BUS_Width-1 downto 0);
    Data_Store: in std_logic_vector(BUS_Width-1 downto 0);
    Mem_addr: in std_logic_vector(BUS_Width-1 downto 0);
    Mem_size: in std_logic_vector(2 downto 0)
  ) ;
  
end MemInterface;

architecture rtl of MemInterface is
    signal lb : std_logic_vector(BUS_Width-1 downto 0);
    signal lh : std_logic_vector(BUS_Width-1 downto 0);
    signal sb : std_logic_vector(BUS_Width-1 downto 0);
    signal sh : std_logic_vector(BUS_Width-1 downto 0);
begin

    Extern_Mem_addr <= Mem_addr(BUS_Width-1 downto 2) & "00";
    
    byte_size_load: process(Mem_addr(1 downto 0), Mem_size(2), Extern_Data_Load)
        variable byteval: std_logic_vector(7 downto 0);
        variable extension: std_logic_vector(BUS_Width-1-8 downto 0);
        alias bytesel : std_logic_vector(1 downto 0) is Mem_addr(1 downto 0);
    begin
        case bytesel is
            when "00" => 
                byteval := Extern_Data_Load(7 downto 0);
            when "01" => 
                byteval := Extern_Data_Load(15 downto 8);
            when "10" => 
                byteval := Extern_Data_Load(23 downto 16);
            when "11" =>  
                byteval := Extern_Data_Load(31 downto 24);
            when others => NULL; 
        end case;
        
        case Mem_size(2) is
            when '0' =>
                extension := (others => byteval(7));
            when '1' =>
                extension := (others =>'0');
            when others => NULL;
        end case;
        
        lb <= extension & byteval;
    end process;
    
    halfword_size_load: process(Mem_addr(1), Mem_size(2), Extern_Data_Load)
        variable halfwordval: std_logic_vector(15 downto 0);
        variable extension: std_logic_vector(BUS_Width-1-16 downto 0);
    begin
        case Mem_addr(1) is
            when '0' => 
                halfwordval := Extern_Data_Load(15 downto 0);
            when '1' =>  
                halfwordval := Extern_Data_Load(31 downto 16);
            when others => NULL; 
        end case;
        
        case Mem_size(2) is
            when '0' =>
                extension := (others => halfwordval(15));
            when '1' =>
                extension := (others =>'0');
            when others => NULL;
        end case;
        
        lh <= extension & halfwordval;
    end process;
   
    load: process(Mem_size(1 downto 0),Extern_Data_Load,lb,lh)
    begin
        case Mem_size(1 downto 0) is
            when "00" =>
                Data_Load <= lb;
            when "01" =>
                Data_Load <= lh;
            when "10" =>
                Data_Load <= Extern_Data_Load;
            when others => Data_Load <= (others => '-');
        end case;
    end process;

    byte_size_store: process(Mem_addr(1 downto 0), Extern_Data_Load,Data_Store(7 downto 0))
        alias bytesel : std_logic_vector(1 downto 0) is Mem_addr(1 downto 0);
        variable storebyte: std_logic_vector(BUS_Width-1 downto 0);
    begin
        case bytesel is
            when "00" => 
                storebyte := Extern_Data_Load(31 downto 8) & Data_Store(7 downto 0);
            when "01" => 
                storebyte := Extern_Data_Load(31 downto 16) & Data_Store(7 downto 0) & Extern_Data_Load(7 downto 0);
            when "10" => 
                storebyte := Extern_Data_Load(31 downto 24) & Data_Store(7 downto 0) & Extern_Data_Load(15 downto 0);
            when "11" =>  
                storebyte := Data_Store(7 downto 0) & Extern_Data_Load(23 downto 0);
            when others => NULL; 
        end case;
        sb <= storebyte;
    end process;
    
    halfword_size_store: process(Mem_addr(1), Extern_Data_Load, Data_Store(15 downto 0))
    variable storehalfw: std_logic_vector(BUS_Width-1 downto 0);
    begin
        case Mem_addr(1) is
            when '1' => 
                storehalfw := Data_Store(15 downto 0) & Extern_Data_Load(15 downto 0);
            when '0' =>  
                storehalfw := Extern_Data_Load(31 downto 16) & Data_Store(15 downto 0);
            when others => NULL; 
        end case;
        sh <= storehalfw;
    end process;
    
    store: process(Mem_size(1 downto 0),Data_Store,Extern_Data_Load,sb,sh)
    begin 
        case Mem_size(1 downto 0) is
            when "00" =>
                Extern_Data_Store <= sb;
            when "01" =>
                Extern_Data_Store <= sh;
            when "10" =>
                Extern_Data_Store <= Data_Store;
            when others => Extern_Data_Store <= (others => '-');
        end case;
    end process;
    
end rtl; 
