library ieee;
use ieee.std_logic_1164.all;

entity decoder is port(
  Clk     	: in  std_logic;  -- main clock
  Rst     	: in  std_logic;  -- asynch Reset
  Start   	: in  std_logic;  -- Tested only when Done
  Input   	: in std_logic_vector (7 downto 0);
  Done0   	: out std_logic;  -- indicates end of pulse after deadtime
  Q0      	: out std_logic;   -- Servo PWM output
  Done1   	: out std_logic;
  Q1      	: out std_logic;
  Done2   	: out std_logic;
  Q2      	: out std_logic
);
end decoder;

architecture behav of decoder is
signal Tick 		: std_logic;
signal Posit0		: std_logic_vector (7 downto 0);
signal Posit1 		: std_logic_vector (7 downto 0);
signal Posit2 		: std_logic_vector (7 downto 0);
signal Start0 		: std_logic;
signal Start1 		: std_logic;
signal Start2 		: std_logic;
signal input_Error 	: std_logic;

component fdiv port(
  Clk     		: in    std_logic;
  Rst     		: in    std_logic;
  Tick7us 		: out   std_logic  );
end component;

component MAE_servo port(
  clk 			: in std_logic;
  input 		: in std_logic_vector (7 downto 0);
  go 			: in std_logic;
  rst 			: in std_logic;
  output0 		: out std_logic_vector (7 downto 0);
  output1 		: out std_logic_vector (7 downto 0);
  output2 		: out std_logic_vector (7 downto 0);
  dataValid0 		: out std_logic;
  dataValid1 		: out std_logic;
  dataValid2 		: out std_logic;
  input_Error 		: out std_logic);
end component;

component servo0 port(
  Clk     		: in  std_logic;  -- main clock
  Rst     		: in  std_logic;  -- asynch Reset
  Tick    		: in  std_logic;  -- one clock period high, 7us repetition rate !
  Start   		: in  std_logic;  -- Tested only when Done
  Posit   		: in std_logic_vector (7 downto 0); -- Pulse length
  Done    		: out std_logic;  -- indicates end of pulse after deadtime
  Q       		: out std_logic   -- Servo PWM output
);
end component;

component servo1 port(
  Clk     		: in  std_logic;  -- main clock
  Rst     		: in  std_logic;  -- asynch Reset
  Tick    		: in  std_logic;  -- one clock period high, 7us repetition rate !
  Start   		: in  std_logic;  -- Tested only when Done
  Posit   		: in std_logic_vector (7 downto 0); -- Pulse length
  Done    		: out std_logic;  -- indicates end of pulse after deadtime
  Q       		: out std_logic   -- Servo PWM output
);
end component;

component servo2 port(
  Clk     		: in  std_logic;  -- main clock
  Rst     		: in  std_logic;  -- asynch Reset
  Tick    		: in  std_logic;  -- one clock period high, 7us repetition rate !
  Start   		: in  std_logic;  -- Tested only when Done
  Posit   		: in std_logic_vector (7 downto 0); -- Pulse length
  Done    		: out std_logic;  -- indicates end of pulse after deadtime
  Q       		: out std_logic   -- Servo PWM output
);
end component;

begin
C0 : fdiv 	port map(Clk => Clk, Rst => Rst, Tick7us => Tick);
C1 : MAE_servo 	port map(clk => Clk, input => Input, go => Start, rst => Rst,
			output0 => Posit0, output1 => Posit1, output2 => Posit2,
			dataValid0 => Start0, dataValid1 => Start1, dataValid2 => Start2, input_Error => input_Error);
C5 : servo0 	port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start0, Posit => Posit0, Done => Done0, Q => Q0);
C6 : servo1 	port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start1, Posit => Posit1, Done => Done1, Q => Q1);
C7 : servo2 	port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start2, Posit => Posit2, Done => Done2, Q => Q2); 
end behav;