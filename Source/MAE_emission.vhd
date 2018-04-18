library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAE_emission is port(
  clk	 	: in std_logic;				-- main clock
  tick 		: in std_logic;				-- tick 8.7 us
  input 	: in std_logic_vector (7 downto 0);	-- 1 byte input
  go		: in std_logic;				-- message sended
  rst 		: in std_logic;				-- reset
  Tx 		: out std_logic);			-- serial output
end MAE_emission;

architecture behav of MAE_emission is
signal i 	: natural := 0;				-- i = counter
type state_type is
(Etat0, Etat1, Etat2);
signal EtatPresent: state_type;

begin
clocked : process(clk, rst)
begin
  if (rst = '1') then
    i <= 0;
    Tx <= '1';
    EtatPresent <= Etat0;
  elsif (clk'event and clk = '1') then
    case EtatPresent is

    when Etat0 =>
      i <= 0;
      Tx <= '1';
      if (go = '1' and tick = '1') then
	EtatPresent <= Etat1;
      end if;

    when Etat1 =>
      Tx <= '0';
      EtatPresent <= Etat2;
      
    when Etat2 =>					-- sending data
      if (tick = '1') then
        if (i = 8) then  
          EtatPresent <= Etat0;
        else
          EtatPresent <= Etat2;
          Tx <= input(i); 
          i <= i+1; 
        end if;
      end if;
      
    end case;
  end if;
end process clocked;
end behav;