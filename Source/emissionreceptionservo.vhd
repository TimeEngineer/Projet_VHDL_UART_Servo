library ieee;
use ieee.std_logic_1164.all;

entity emissionreceptionservo is port(
  clk 			: in std_logic;
  input 		: in std_logic_vector (7 downto 0);
  go 			: in std_logic;
  rst 			: in std_logic;
  Done0   		: out std_logic;  -- indicates end of pulse after deadtime
  Q0      		: out std_logic;   -- Servo PWM output
  Done1   		: out std_logic;
  Q1      		: out std_logic;
  Done2   		: out std_logic;
  Q2      		: out std_logic);
  end emissionreceptionservo;

architecture behav of emissionreceptionservo is
signal dataValid 	: std_logic;
signal Rx_error  	: std_logic;
signal output		: std_logic_vector (7 downto 0);

component emissionreception port(
  clk 			: in std_logic;
  input 		: in std_logic_vector (7 downto 0);
  go 			: in std_logic;
  rst 			: in std_logic;
  dataValid 		: out std_logic;
  Rx_Error 		: out std_logic;
  output 		: out std_logic_vector (7 downto 0));
end component;

component decoder port(
  Clk     		: in  std_logic;  -- main clock
  Rst     		: in  std_logic;  -- asynch Reset
  Start   		: in  std_logic;  -- Tested only when Done
  Input   		: in std_logic_vector (7 downto 0);
  Done0   		: out std_logic;  -- indicates end of pulse after deadtime
  Q0      		: out std_logic;   -- Servo PWM output
  Done1   		: out std_logic;
  Q1      		: out std_logic;
  Done2   		: out std_logic;
  Q2      		: out std_logic);
end component;

begin
C0 : emissionreception	port map(clk => clk, input => input, go => go, rst => rst, dataValid => dataValid, Rx_Error => Rx_Error, output => output);
C1 : decoder	 	port map(Clk => clk, Rst => rst, Start => dataValid, Input => output, Done0 => Done0, Q0 => Q0, Done1 => Done1, Q1 => Q1, Done2 => Done2, Q2 => Q2);
end behav;