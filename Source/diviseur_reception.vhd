library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity diviseur_reception is port(
  clk 		: in std_logic;
  clr 		: in std_logic;
  tick 		: out std_logic);
end diviseur_reception;

architecture behav of diviseur_reception is
signal counter 	: unsigned (6 downto 0) := (others => '0');
signal div 	: unsigned (6 downto 0) := "1101100"; -- (108)

begin
clock_divider : process (clr, clk)
begin
  if clr = '1' then
   counter <= (others => '0');
   tick <= '0';    
  elsif rising_edge (clk) then
    if counter = div then
      counter <= (others => '0');
      tick <= '1';
    else
      counter <= counter + 1;
      tick <= '0';
    end if;
  end if;
end process clock_divider;
end behav;