library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CSRFile is
  generic(
    BUS_Width: integer :=32
  );
  port (
    clk: in std_logic;
    Extern_IRQ: in std_logic;
    CSR_IRQ: out std_logic;
    CSR_PCaddr: out std_logic_vector(BUS_Width-1 downto 0);
    CSR_data: out std_logic_vector(BUS_Width-1 downto 0);
    CSR_mepc: in std_logic_vector(BUS_Width-1 downto 0);
    CSR_Wdata: in std_logic_vector(BUS_Width-1 downto 0);
    CSR_mcause: in std_logic_vector(3 downto 0);
    CSR_addr: in std_logic_vector(11 downto 0);
    CSR_Wen: in std_logic;
    CSR_Wen_traps: in std_logic;
    CSR_Ret: in std_logic
  ) ;
end CSRFile;

architecture rtl of CSRFile is
    -- mstatus.mpp constant to indicate only M-mode
    constant mstatus_mpp: std_logic_vector(1 downto 0) := "11";
    -- CSRs addresses
    constant misa_addr:std_logic_vector(11 downto 0) := x"301";
    constant mvect_addr:std_logic_vector(11 downto 0) := x"305";
    constant mepc_addr:std_logic_vector(11 downto 0) := x"341";
    constant mcause_addr:std_logic_vector(11 downto 0) := x"342";
    constant mstatus_addr:std_logic_vector(11 downto 0) := x"300";
    constant mie_addr:std_logic_vector(11 downto 0) := x"304";
    constant mip_addr:std_logic_vector(11 downto 0) := x"344";
    --CSRs
    constant misa: std_logic_vector(BUS_Width-1 downto 0) := x"40000100";
    signal mvect: std_logic_vector(BUS_Width-1 downto 0);
    signal mepc: std_logic_vector(BUS_Width-1 -2 downto 0);
    signal mcause: std_logic_vector(BUS_Width-1 downto 0);
    signal mstatus: std_logic_vector(1 downto 0) := "00";--MPIE,MIE
    signal mie,mip: std_logic := '0';--bit 11
    --auxiliary signals
    signal irq,meta_irq: std_logic := '0';
    --signal mvect_out: std_logic_vector(BUS_Width-1 downto 0);
    -- Interrupt causes values
    constant MEI: integer := 16#2C#; --Machine External Interrupt

begin
-- irq can only be generated if mstatus.MIE, mip.MEIP, mie.MEIE, equal to 1
irq <= mstatus(0) and mip and mie;
CSR_IRQ <= irq;

    --used to calculate trap handler address and MRET address.
    --only works because this implementation only accepts Machine External Interrupts
    trap_addr : process(CSR_Ret,irq,mvect,mepc)
        variable enirq : std_logic;
        variable mvect_out: std_logic_vector(BUS_Width-1 downto 0);
        variable pcaddr: std_logic_vector(BUS_Width-1 downto 0);
        variable base: std_logic_vector(BUS_Width-1 downto 0);
    begin
        base := mvect(BUS_Width-1 downto 2) & "00";
        enirq := irq and mvect(0);
        case enirq is
            when '0' =>
                mvect_out := base;
            when '1' =>
                mvect_out := std_logic_vector(unsigned(base)+MEI);
            when others => NULL;
        end case;
        
        case CSR_Ret is
            when '1' =>
                pcaddr := mepc & "00";
            when '0' => 
                pcaddr := mvect_out;
            when others => NULL;
        end case;
        CSR_PCaddr <= pcaddr;
    end process;
    
-- CSR Write processes
    mvect_write: process(clk)
    begin
        if (rising_edge(clk)) then
            if (CSR_Wen = '1') and (CSR_addr = mvect_addr) and (CSR_Ret /= '1') and (CSR_Wen_traps /= '1')then
                mvect <= CSR_Wdata(BUS_Width-1 downto 0);
            end if;
        end if;
    end process;
    
    mie_write: process(clk)
    begin
        if (rising_edge(clk)) then
            if (CSR_Wen = '1') and (CSR_addr = mie_addr) and (CSR_Ret /= '1') and (CSR_Wen_traps /= '1')then
                mie <= CSR_Wdata(11);--MEIE bit
            end if;
        end if;
    end process;
    
    --used meta_irq, to minimize meta stability of asynchronus irq
    --causes irq to be detected 2-3 clocks cycles later 
    mip_write: process(clk)
    begin
        if (rising_edge(clk)) then
            meta_irq <= Extern_IRQ;
            mip <= meta_irq;
        end if;
    end process;
    
    --manage mepc write conflicts from traps and CSR instrucctions.
    --it works because if,elsif statements works as a priority encoder, if several conditions are true, only the first
    --satisfiable condition is evaluated.
    mepc_write: process(clk)
    begin
        if (rising_edge(clk)) then
            if CSR_Wen_traps = '1' then
                mepc <= CSR_mepc(BUS_Width-1 downto 2);
            elsif (CSR_Wen = '1') and (CSR_addr = mepc_addr) and (CSR_Ret /= '1') then
                mepc <= CSR_Wdata(BUS_Width-1 downto 2);
            end if;
        end if;
    end process;
    
    mcause_write: process(clk)
    begin
        if (rising_edge(clk)) then
            if CSR_Wen_traps = '1' then
                mcause <= irq & (BUS_Width-1-1 downto 4 => '0') & CSR_mcause; 
            elsif (CSR_Wen = '1') and (CSR_addr = mcause_addr) and (CSR_Ret /= '1') then
                mcause <= '0' & CSR_Wdata(BUS_Width-1-1 downto 0);
            end if;
        end if;
    end process;
    
    mstatus_write: process(clk)
    begin
        if (rising_edge(clk)) then
            if CSR_Wen_traps = '1' then
                mstatus(1) <= mstatus(0); --MPIE = MIE
                mstatus(0) <= '0';        --MIE = 0
            elsif CSR_Ret = '1' then    -- When MRET instruction is executed
                mstatus(0) <= mstatus(1); --MIE = MPIE
                mstatus(1) <= '1';        --MPIE = 1
            elsif (CSR_Wen = '1') and (CSR_addr = mstatus_addr) then
                mstatus(1) <= CSR_Wdata(7);--MPIE
                mstatus(0) <= CSR_Wdata(3);--MIE
            end if;            
        end if;
    end process;


    csr_read: process(CSR_addr,mcause,mstatus,mepc,mvect,mie,mip)
        variable csrdata: std_logic_vector(BUS_Width-1 downto 0);
    begin
        case CSR_addr is
            when mcause_addr =>
                csrdata := mcause;
            when mstatus_addr =>
                csrdata :=  "000" & x"0000" & mstatus_mpp & "000" & mstatus(1) & "000" & mstatus(0) & "000";--change if xlen = 64 --(31 downto 12 => '0') "000" & x"0000" 
            when mvect_addr =>
                csrdata := mvect;
            when misa_addr =>
                csrdata := misa;
            when mepc_addr =>
                csrdata := mepc & "00";
            when mie_addr =>
                csrdata := (BUS_Width-1 downto 12 => '0') & mie &(10 downto 0 => '0');
            when mip_addr =>
                csrdata := (BUS_Width-1 downto 12 => '0') & mip &(10 downto 0 => '0');
            when others =>
                csrdata := (others => '0');
        end case;
        CSR_data <= csrdata;
    end process;
    
end rtl;
