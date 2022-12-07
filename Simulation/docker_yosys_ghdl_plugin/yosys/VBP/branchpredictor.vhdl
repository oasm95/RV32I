library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rv32iconstants.all;

entity BranchPredictor is
    generic(
        BP_SIZE_BITS: integer:=8;
        BUS_Width: integer:=32
    );
    port(
        clk: in std_logic;
        ISJAL: in std_logic;
        WEN: in std_logic;
        TAKENJMP: in std_logic;
        WASMATCH: in std_logic;
        PCr: in std_logic_vector(BUS_Width-1 downto 0);
        PCw: in std_logic_vector(BUS_Width-1 downto 0);
        WTARGET: in std_logic_vector(BUS_Width-3 downto 0);
        RTARGET: out std_logic_vector(BUS_Width-3 downto 0);
        PREDICTION: out std_logic;
        MATCH: out std_logic
    );
        
end BranchPredictor;

architecture rtl of BranchPredictor is
    constant bpsize: integer := 2**BP_SIZE_BITS;
    type TagBuffer is array (bpsize-1 downto 0) of std_logic_vector(BUS_Width-BP_SIZE_BITS-1-2 downto 0);
    type TargetBuffer is array (bpsize-1 downto 0) of std_logic_vector (BUS_Width-1-2 downto 0);
    type Statebuffer is array (bpsize-1 downto 0) of std_logic_vector (1 downto 0);
    type JmpTypebuffer is array (bpsize-1 downto 0) of std_logic;
    
    signal tags: TagBuffer;
    signal targets: TargetBuffer;
    signal states: Statebuffer := (others => "00");
    signal jmptypes: JMPTypebuffer := (others => '0');
    --signal valids: JMPTypebuffer := (others => '0');
    signal rindex: integer range 0 to bpsize-1;
    signal windex: integer range 0 to bpsize-1;
    signal rtag: std_logic_vector(BUS_Width-BP_SIZE_BITS-1-2 downto 0);
    signal wtag: std_logic_vector(BUS_Width-BP_SIZE_BITS-1-2 downto 0);
    signal spredict: std_logic;
    signal smatch: std_logic;
    signal nextstate: std_logic_vector(1 downto 0);
begin
    
    rindex <= to_integer(unsigned(PCr(BP_SIZE_BITS+1 downto 2)));
    windex <= to_integer(unsigned(PCw(BP_SIZE_BITS+1 downto 2)));
    rtag <= PCr(BUS_Width-1 downto BP_SIZE_BITS+2);
    wtag <= PCw(BUS_Width-1 downto BP_SIZE_BITS+2);
    
    RTARGET <= targets(rindex);
    MATCH <= smatch ;
    PREDICTION <= smatch and spredict;    
    
    
    DetectMatch: process(rtag,tags,rindex)        
    begin
        if rtag = tags(rindex) then
            smatch <= '1';
        else
            smatch <= '0';
        end if;
    end process;
    
    PredictBranch: process(jmptypes,rindex,states)
        variable vprediction : std_logic;
        variable currentstate : std_logic_vector(1 downto 0);
    begin
        currentstate:=states(rindex);
        case currentstate is
            when "00" => vprediction:= '0';
            when "01" => vprediction:= '0';
            when "10" => vprediction:= '1';
            when "11" => vprediction:= '1';
            when others => NULL;
        end case;
        spredict <= vprediction or jmptypes(rindex);
    end process;
    
    UpdateState: process(states,windex,TAKENJMP,WASMATCH)
        variable cstate : std_logic_vector(1 downto 0);
    begin
        cstate:=states(windex);
        if WASMATCH = '1' then
            case cstate is
                when "00" => 
                    if TAKENJMP = '1' then
                        nextstate <= "01";
                    else
                        nextstate <= "00";
                    end if;
                when "01" => 
                    if TAKENJMP = '1' then
                        nextstate <= "10";
                    else
                        nextstate <= "00";
                    end if;               
                when "10" =>
                    if TAKENJMP = '1' then
                        nextstate <= "11";
                    else
                        nextstate <= "01";
                    end if;  
                when "11" => 
                    if TAKENJMP = '1' then
                        nextstate <= "11";
                    else
                        nextstate <= "10";
                    end if; 
                when others => NULL;
            end case;
        else
            if TAKENJMP = '1' then
                nextstate <= "01";
            else
                nextstate <= "00";
            end if;
        end if;     
    end process;
    
    UpdateTables: process(clk)
    begin
        if rising_edge(clk) then
            if WEN = '1' then
                jmptypes(windex)<= ISJAL;
                targets(windex)<= WTARGET;
                tags(windex)<= wtag;
                states(windex) <= nextstate;
                --valids(windex) <= '1';
            end if;
        end if;
    end process;
    
end rtl;

