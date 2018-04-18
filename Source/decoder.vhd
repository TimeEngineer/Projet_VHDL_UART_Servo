library ieee;
use ieee.std_logic_1164.all;

entity decoder is port( -- Block fdiv + MAE_Servo + servo + convertor
  Clk     		: in  std_logic;  			-- main clock
  Rst     		: in  std_logic;  			-- asynch Reset
  Start   		: in  std_logic;  			-- Tested only when Done
  Input   		: in std_logic_vector (7 downto 0);	-- 1 byte input
  Done0   		: out std_logic;  			-- indicates end of pulse after deadtime
  Q0      		: out std_logic;  			-- Servo PWM output
  Done1   		: out std_logic;
  Q1      		: out std_logic;
  Done2   		: out std_logic;
  Q2      		: out std_logic
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
signal tempVector0	: std_logic_vector (7 downto 0);
signal tempVector1	: std_logic_vector (7 downto 0);
signal tempVector2	: std_logic_vector (7 downto 0);

component fdiv port(
  Clk     		: in    std_logic;
  Rst     		: in    std_logic;
  Tick7us 		: out   std_logic  );
end component;

component MAE_servo port(
  clk 			: in std_logic;				-- main clock
  input 		: in std_logic_vector (7 downto 0);	-- 1 byte input
  go 			: in std_logic;				-- message sended
  rst 			: in std_logic;				-- reset
  output0 		: out std_logic_vector (7 downto 0);	-- data for servo 0
  output1 		: out std_logic_vector (7 downto 0);	-- data for servo 1
  output2 		: out std_logic_vector (7 downto 0);	-- data for servo 2
  dataValid0 		: out std_logic;			-- data received by servo 0
  dataValid1 		: out std_logic;			-- data received by servo 1
  dataValid2 		: out std_logic;			-- data received by servi 2
  input_Error 		: out std_logic);			-- failed transmit
end component;

component servo port(
  Clk     		: in  std_logic;  			-- main clock
  Rst     		: in  std_logic;  			-- asynch Reset
  Tick    		: in  std_logic;  			-- one clock period high, 7us repetition rate !
  Start   		: in  std_logic;  			-- Tested only when Done
  Posit   		: in std_logic_vector (7 downto 0); 	-- Pulse length
  Done    		: out std_logic;  			-- indicates end of pulse after deadtime
  Q       		: out std_logic   			-- Servo PWM output
);
end component;

component converter port ( -- Convert digit 0-9 to ascii code
  input			: in std_logic_vector (7 downto 0);
  output		: out std_logic_vector (7 downto 0));
end component;

begin
C0 : fdiv 		port map(Clk => Clk, Rst => Rst, Tick7us => Tick); -- divider for Servo
C1 : MAE_servo 		port map(clk => Clk, input => Input, go => Start, rst => Rst,
			output0 => tempVector0, output1 => tempVector1, output2 => tempVector2,
			dataValid0 => Start0, dataValid1 => Start1, dataValid2 => Start2, input_Error => input_Error);
C2 : converter 		port map(input => tempVector0, output => Posit0); -- Converter for Servo 0
C3 : converter 		port map(input => tempVector1, output => Posit1); -- Converter for Servo 1
C4 : converter 		port map(input => tempVector2, output => Posit2); -- Converter for Servo 2
C5 : servo  		port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start0, Posit => Posit0, Done => Done0, Q => Q0); -- Servo 0
C6 : servo	 	port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start1, Posit => Posit1, Done => Done1, Q => Q1); -- Servo 1
C7 : servo	 	port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start2, Posit => Posit2, Done => Done2, Q => Q2); -- Servo 2
end behav;