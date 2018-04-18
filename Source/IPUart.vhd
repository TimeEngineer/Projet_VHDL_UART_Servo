library ieee;
use ieee.std_logic_1164.all;

entity IPUart is port( -- Block Transmitter + Receiver UART
  clk 		: in std_logic;				-- main clock
  input 	: in std_logic_vector (7 downto 0);	-- 1 byte input (Transmitter)
  go 		: in std_logic;				-- message sended (Transmitter)
  rst 		: in std_logic;				-- reset
  Tx 		: out std_logic;			-- serial output (Transmitter)
  Rx 		: in std_logic;				-- serial input (Receiver)
  dataValid 	: out std_logic;			-- message received (Receiver)
  Rx_Error 	: out std_logic;			-- failed transmit (Receiver)
  output 	: out std_logic_vector (7 downto 0));	-- 1 byte output (Receiver)
end IPUart;

architecture behav of IPUart is
signal tick 	: std_logic;

component emission port(
  clk 		: in std_logic;				-- clock
  input 	: in std_logic_vector (7 downto 0);	-- 1 byte input
  go 		: in std_logic;				-- message sended
  rst 		: in std_logic;				-- reset
  Tx 		: out std_logic); 			-- serial output
end component;

component reception port(
  clk 		: in std_logic;				-- main clock
  Rx 		: in std_logic;				-- serial input
  rst 		: in std_logic;				-- reset
  dataValid 	: out std_logic;			-- message received
  Rx_Error 	: out std_logic;			-- failed transmit
  output 	: out std_logic_vector (7 downto 0));	-- 1 byte output
end component;

begin
C0 : emission 	port map(clk => clk, input => input, go => go, rst => rst, Tx => Tx);
C1 : reception	port map(clk => clk, Rx => Rx, rst => rst, dataValid => dataValid, Rx_Error => Rx_Error, output => output);
end behav;