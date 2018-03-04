library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_reception is
end entity;

architecture bench of tb_reception is
signal Tclk 		: std_logic := '0';
signal Tinput 		: std_logic_vector (7 downto 0);
signal Tgo 		: std_logic;
signal Trst 		: std_logic := '0';
signal TdataValid 	: std_logic;
signal TRx_error 	: std_logic;
signal Toutput 		: std_logic_vector (7 downto 0);
signal Done 		: boolean := False;

begin
-- instanciation du composant à tester
UUT1: entity work.emissionreception(behav) port map(
	clk => Tclk,
	input => Tinput,
	go => Tgo,
	rst => Trst,
	dataValid => TdataValid,
	Rx_Error => TRx_Error,
	output => Toutput);

--Génération d'une horloge
Tclk <= '0' when Done else not Tclk after 20 ns;
STIMULUS: process
begin
Tinput <= "00000000";
Tgo <= '0';

wait for 200 us;
Tinput <= "01000000";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 100 us;
Tinput <= "00000000";
wait for 200 us;
Tinput <= "10100001";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 100 us;
TinPut <= "00000000";
wait for 400 us;
end process STIMULUS;
end bench;