library ieee;
use ieee.std_logic_1164.all;

entity IP is port(
  clk : in std_logic;
  input : in std_logic_vector (7 downto 0);
  go : in std_logic;
  rst : in std_logic;
  Rx : in std_logic;
  Done    : out std_logic;  -- indicates end of pulse after deadtime
  Q       : out std_logic   -- Servo PWM output
);
end IP;

architecture behav of IP is
signal Tx : std_logic;
signal Start : std_logic;
signal Data : std_logic_vector (7 downto 0);
signal Error : std_logic;

component IPUart port(
  clk : in std_logic;
  input : in std_logic_vector (7 downto 0);
  go : in std_logic;
  rst : in std_logic;
  Tx : out std_logic;
  Rx : in std_logic;
  dataValid : out std_logic;
  Rx_Error : out std_logic;
  output : out std_logic_vector (7 downto 0));
end component;

component decoder port(
  Clk     : In  std_logic;  -- main clock
  Rst     : In  std_logic;  -- asynch Reset
  Start   : In  std_logic;  -- Tested only when Done
  Input   : In std_logic_vector (7 downto 0);
  Done    : out std_logic;  -- indicates end of pulse after deadtime
  Q       : out std_logic   -- Servo PWM output
);
end component;

begin
C0 : IPUart port map(clk => clk, input => input, go => go, rst => rst, Tx => Tx, Rx => Rx, dataValid => Start, Rx_Error => Error, output => Data);
C1 : decoder port map(Clk => clk, Rst => rst, Start => Start, Input => Data, Done => Done, Q => Q);
end behav;