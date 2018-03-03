library ieee;
use ieee.std_logic_1164.all;

entity decoder is port(
  Clk     : In  std_logic;  -- main clock
  Rst     : In  std_logic;  -- asynch Reset
  Start   : In  std_logic;  -- Tested only when Done
  Input   : In std_logic_vector (7 downto 0);
  Done    : out std_logic;  -- indicates end of pulse after deadtime
  Q       : out std_logic   -- Servo PWM output
);
end decoder;

architecture behav of decoder is
signal Tick : std_logic;
signal Posit : std_logic_vector (7 downto 0);

component converter port(
  input : in std_logic_vector (7 downto 0);
  output : out std_logic_vector (7 downto 0));
end component;

component fdiv port(
  Clk     : In    std_logic;
  Rst     : In    std_logic;
  Tick7us : Out   std_logic  );
end component;

component servo port(
  Clk     : In  std_logic;  -- main clock
  Rst     : In  std_logic;  -- asynch Reset
  Tick    : In  std_logic;  -- one clock period high, 7us repetition rate !
  Start   : In  std_logic;  -- Tested only when Done
  Posit   : In std_logic_vector (7 downto 0); -- Pulse length
  Done    : out std_logic;  -- indicates end of pulse after deadtime
  Q       : out std_logic   -- Servo PWM output
);
end component;

begin
C0 : converter port map(input => Input, output => Posit);
C1 : fdiv port map(Clk => Clk, Rst => Rst, Tick7us => Tick);
C2 : servo port map(Clk => Clk, Rst => Rst, Tick => Tick, Start => Start, Posit => Posit, Done => Done, Q => Q);
end behav;