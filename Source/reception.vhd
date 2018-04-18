library ieee;
use ieee.std_logic_1164.all;

entity reception is port( -- Block divider + MAE_receiver
  clk 		: in std_logic;				-- main clock
  Rx 		: in std_logic;				-- serial input
  rst 		: in std_logic;				-- reset
  dataValid 	: out std_logic;			-- message received
  Rx_Error 	: out std_logic;			-- failed transmit
  output 	: out std_logic_vector (7 downto 0));	-- 1 byte output
end reception;

architecture behav of reception is
signal tick 	: std_logic;
signal clear 	: std_logic;

component diviseur_reception port(
  clk 		: in std_logic;
  clr 		: in std_logic;
  tick 		: out std_logic);
end component;

component MAE_reception port(
  clk		: in std_logic; 			-- main clock
  tick		: in std_logic;				-- tick 4.3 us
  Rx		: in std_logic;				-- serial input
  rst		: in std_logic;				-- reset
  clr		: out std_logic;			-- clear divider for synchronize
  dataValid	: out std_logic;			-- message received
  Rx_Error	: out std_logic;			-- failed transmit
  output	: out std_logic_vector (7 downto 0)); 	-- 1 byte output
end component;

begin
C0 : diviseur_reception port map(clk => clk, clr => clear, tick => tick);
C1 : MAE_reception 	port map(clk => clk, tick => tick, Rx => Rx, rst => rst, clr => clear, dataValid => dataValid, Rx_Error => Rx_Error, output => output);
end behav;
