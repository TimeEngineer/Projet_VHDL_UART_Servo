library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_diviseur is
end entity;

architecture bench of tb_diviseur is
signal Tclk 	: std_logic := '0';
signal Tclr 	: std_logic;
signal Ttick1 	: std_logic;
signal Ttick2 	: std_logic;
signal Done 	: boolean := False;

begin
-- instanciation du composant à tester
UUT1: entity work.diviseur_reception(behav) port map(
	clk => Tclk,
	clr => Tclr,
	tick => Ttick1);

UUT2: entity work.diviseur_emission(behav) port map(
	clk => Tclk,
	tick => Ttick2);

-- Génération d'une horloge
Tclk <= '0' when Done else not Tclk after 20 ns;
-- Génération d?un reset au début
Tclr <= '1', '0' after 5 ns;
end bench;