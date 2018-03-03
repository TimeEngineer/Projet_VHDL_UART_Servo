library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_servo is
end entity;

architecture bench of tb_servo is
constant FClock : positive := 10e6; -- 10 MHz
constant Period : time := 1 sec / Fclock;
signal Stopped  : boolean;

signal Tclk 		: std_logic := '0';
signal Ttick 		: std_logic := '0';
signal Tinput 		: std_logic_vector (7 downto 0);
signal Tgo 		: std_logic;
signal Trst 		: std_logic := '0';
signal Toutput0 	: std_logic_vector (7 downto 0);
signal Toutput1 	: std_logic_vector (7 downto 0);
signal Toutput2 	: std_logic_vector (7 downto 0);
signal TdataValid0 	: std_logic;
signal TdataValid1 	: std_logic;
signal TdataValid2 	: std_logic;
signal Tinput_Error 	: std_logic;
signal Done 		: boolean := False;

Begin
-- instanciation du composant à tester
UUT1: entity work.MAE_servo(behav) port map(
clk => Tclk, tick => Ttick, input => Tinput, go => Tgo, rst => Trst,
output0 => Toutput0, output1 => Toutput1, output2 => Toutput2, dataValid0 => TdataValid0, dataValid1 => TdataValid1, dataValid2 => TdataValid2, input_Error => Tinput_Error);
--Génération d'une horloge
Tclk <= '0' when Done else not Tclk after 20 ns;
Stopped <= true after 90 ms;
Ttick <= '0' when Stopped else not Ttick after 7 us - Period - 1 ns, Ttick after 7 us;
STIMULUS: process
begin
Tinput <= "00000000";
Tgo <= '0';
wait for 200 us;
Tinput <= "01110011";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";

wait for 200 us;
Tinput <= "00110000";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";

wait for 200 us;
Tinput <= "00000100";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";

wait for 200 us;
Tinput <= "01110011";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";

wait for 200 us;
Tinput <= "00110000";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";

wait for 200 us;
Tinput <= "00010000";
Tgo <= '1';
wait for 8.7 us;
Tgo <= '0';
wait for 200 us;
Tinput <= "00000000";
wait for 400 us;
end process STIMULUS;
end bench;