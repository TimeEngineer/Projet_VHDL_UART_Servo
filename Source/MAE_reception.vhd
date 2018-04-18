library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAE_reception is port(
  clk		: in std_logic; 					-- main clock
  tick		: in std_logic;						-- tick 4.3 us
  Rx		: in std_logic;						-- serial input
  rst		: in std_logic;						-- reset
  clr		: out std_logic;					-- clear divider for synchronize
  dataValid	: out std_logic;					-- message received
  Rx_Error	: out std_logic;					-- failed transmit
  output	: out std_logic_vector (7 downto 0)); 			-- 1 byte output
end MAE_reception; 

architecture behav of MAE_reception is 
signal reg 	: std_logic_vector (7 downto 0) := (others => '0');	-- reg = register
signal i 	: natural := 0;  					-- i = counter
type state_type is
(Etat0,Etat1,Etat2,Etat3,Etat4,Etat5,Etat6,Etat7,Etat8,Etat9);
signal EtatPresent: state_type;

begin
clocked : process(clk,rst)
begin 
  if (rst = '1') then
    reg <= (others => '0');
    i <= 0;
    dataValid <= '0';
    Rx_Error <= '0';
    EtatPresent <= Etat0;
  elsif (clk'event and clk = '1') then     
    case EtatPresent is   
    when Etat0 =>
	reg <= (others => '0');
	i <= 0;
        dataValid <= '0';
	Rx_Error <= '0';
        if (Rx = '0') then  
          EtatPresent <= Etat1;
        end if;
                
    when Etat1 => 
        clr <= '1';  
        EtatPresent <= Etat2;

    when Etat2 =>  
        clr <= '0';
        if (tick = '1') then
          EtatPresent <= Etat3;
        end if;
                
    when Etat3 =>							-- stacking data
	if (tick = '1') then
          EtatPresent <= Etat4;   
	  if (i = 8) then  
            EtatPresent <= Etat5; 
          else
            reg(i) <= Rx;
            i <= i+1;
          end if;
        end if;
 
    when Etat4 =>
	if (tick = '1') then 
          EtatPresent <= Etat3;
        end if;
                  
    when Etat5 =>
        if (tick = '1') then 
          EtatPresent <= Etat6;
        end if;
      
    when Etat6 =>
        if (tick = '1') then 
          EtatPresent <= Etat7;
        end if;
      
    when Etat7 =>							-- test
        if (Rx = '0') then 
          EtatPresent <= Etat8;
        elsif (Rx = '1') then
          EtatPresent <= Etat9;
        end if;
                          
    when Etat8 =>							-- failed
        Rx_Error <= '1';
        EtatPresent <= Etat0;
                          
    when Etat9 =>							-- good
        Rx_Error <= '0';
        dataValid <= '1';  
        output <= reg;
	if (tick = '1') then
          EtatPresent <= Etat0;
        end if;     
    end case; 
  end if;
end process clocked;
end architecture;