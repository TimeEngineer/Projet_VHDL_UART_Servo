library ieee;
use ieee.std_logic_1164.all;

entity IP is port(
  clk     	: in std_logic;
  input   	: in std_logic_vector (7 downto 0);
  go 	  	: in std_logic;
  rst 	  	: in std_logic;
  Rx 	  	: in std_logic;
  Done0   	: out std_logic;  -- indicates end of pulse after deadtime
  Q0      	: out std_logic;   -- Servo PWM output
  Done1   	: out std_logic;
  Q1      	: out std_logic;
  Done2   	: out std_logic;
  Q2      	: out std_logic
);
end IP;

architecture behav of IP is
signal Tx 	: std_logic;
signal Start 	: std_logic;
signal Data 	: std_logic_vector (7 downto 0);
signal Error 	: std_logic;

component IPUart port(
  clk 		: in std_logic;
  input 	: in std_logic_vector (7 downto 0); -- Transmitter
  go 		: in std_logic;	-- Transmitter
  rst 		: in std_logic;
  Tx 		: out std_logic; -- Transmitter
  Rx 		: in std_logic; -- Receiver
  dataValid 	: out std_logic; -- Receiver
  Rx_Error 	: out std_logic; -- Receiver
  output 	: out std_logic_vector (7 downto 0)); -- Receiver
end component;

component decoder port(
  Clk     	: In  std_logic;  -- main clock
  Rst     	: In  std_logic;  -- asynch Reset
  Start   	: In  std_logic;  -- Tested only when Done
  Input   	: In std_logic_vector (7 downto 0);
  Done0   	: out std_logic;  -- indicates end of pulse after deadtime
  Q0      	: out std_logic;   -- Servo PWM output
  Done1   	: out std_logic;  -- indicates end of pulse after deadtime
  Q1     	: out std_logic;   -- Servo PWM output
  Done2   	: out std_logic;  -- indicates end of pulse after deadtime
  Q2      	: out std_logic   -- Servo PWM output
);
end component;

begin
C0 : IPUart 	port map(clk => clk, input => input, go => go, rst => rst, Tx => Tx, Rx => Rx, dataValid => Start, Rx_Error => Error, output => Data);
C1 : decoder 	port map(Clk => clk, Rst => rst, Start => Start, Input => Data, Done0 => Done0, Q0 => Q0, Done1 => Done1, Q1 => Q1, Done2 => Done2, Q2 => Q2);
end behav;