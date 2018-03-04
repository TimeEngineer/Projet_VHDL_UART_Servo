library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_emission is
end entity;

architecture bench of tb_emission is
signal Tclk 	: std_logic := '0';
signal Tinput 	: std_logic_vector (7 downto 0);
signal Tgo 	: std_logic;
signal Trst 	: std_logic := '0';
signal TTx 	: std_logic;
signal Done 	: boolean := False;

Begin
-- instanciation du composant à tester
UUT1: entity work.emission(behav) port map(
clk => Tclk, input => Tinput, go => Tgo, rst => Trst,
Tx => TTx);
--Génération d'une horloge
Tclk <= '0' when Done else not Tclk after 20 ns;
STIMULUS: process
begin
Tinput <= "00000000";
Tgo <= '0';
wait for 200 us;
Tinput <= "00000001";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 100 us;
Tinput <= "00000000";
wait for 200 us;
Tinput <= "01000001";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 100 us;
TinPut <= "00000000";
wait for 400 us;
end process STIMULUS;
end bench;