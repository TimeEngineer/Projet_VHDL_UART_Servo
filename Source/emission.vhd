library ieee;
use ieee.std_logic_1164.all;

entity emission is port( -- Block divider + MAE_transmitter
  clk 		: in std_logic;				-- main clock
  input 	: in std_logic_vector (7 downto 0);	-- 1 byte input
  go 		: in std_logic;				-- message sended
  rst 		: in std_logic;				-- reset
  Tx 		: out std_logic); 			-- serial output
end emission;

architecture behav of emission is
signal tick 	: std_logic;

component diviseur_emission port(
  clk 		: in std_logic;
  tick		: out std_logic);
end component;

component MAE_emission port(
  clk	 	: in std_logic;				-- main clock
  tick 		: in std_logic;				-- tick 8.7 us
  input 	: in std_logic_vector (7 downto 0);	-- 1 byte input
  go		: in std_logic;				-- message sended
  rst 		: in std_logic;				-- reset
  Tx 		: out std_logic);			-- serial output
end component;

begin
C0 : diviseur_emission 	port map(clk => clk, tick => tick);
C1 : MAE_emission 	port map(clk => clk, tick => tick, input => input, go => go, rst => rst, Tx => Tx);
end behav;