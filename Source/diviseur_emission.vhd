library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity diviseur_emission is port(
  clk 		: in std_logic;
  tick 		: out std_logic);
end diviseur_emission;

architecture behav of diviseur_emission is
signal counter 	: unsigned (7 downto 0) := (others => '0');
signal div 	: unsigned (7 downto 0) := "11011001"; -- (217)

begin
clock_divider : process (clk)
begin
  if rising_edge (clk) then
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