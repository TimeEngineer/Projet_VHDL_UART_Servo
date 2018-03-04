library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_IP is
end entity;

architecture bench of tb_IP is
signal Tclk 	: std_logic := '0';
signal Tinput   : std_logic_vector (7 downto 0);
signal Tgo 	: std_logic;
signal Trst 	: std_logic := '0';
signal TDone0   : std_logic;  -- indicates end of pulse after deadtime
signal TQ0      : std_logic;   -- Servo PWM output
signal TDone1   : std_logic;
signal TQ1      : std_logic;
signal TDone2   : std_logic;
signal TQ2      : std_logic;
signal Done 	: boolean := False;

begin
-- instanciation du composant à tester
UUT1: entity work.emissionreceptionservo(behav) port map(
	clk => Tclk,
	input => Tinput,
	go => Tgo,
	rst => Trst,
	Done0 => TDone0,
	Q0 => TQ0,
	Done1 => TDone1,
	Q1 => TQ1,
	Done2 => TDone2,
	Q2 => TQ2);

--Génération d'une horloge
Tclk <= '0' when Done else not Tclk after 20 ns;
STIMULUS: process
begin
Tinput <= x"00";
wait for 200 us;
Tinput <= x"73";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 200 us;
Tinput <= x"30";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 200 us;
Tinput <= "00000100";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 200 us;
Tinput <= x"73";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 200 us;
Tinput <= x"30";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';

wait for 200 us;
Tinput <= "00010000";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 400 us;
end process STIMULUS;
end bench;