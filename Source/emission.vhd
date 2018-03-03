library ieee;
use ieee.std_logic_1164.all;

entity emission is port(
  clk 		: in std_logic;
  input 	: in std_logic_vector (7 downto 0);
  go 		: in std_logic;
  rst 		: in std_logic;
  Tx 		: out std_logic);
end emission;

architecture behav of emission is
signal tick 	: std_logic;

component Diviseur_emission port(
  clk 		: in std_logic;
  tick		: out std_logic);
end component;

component MAE_emission port(
  clk 		: in std_logic;
  tick 		: in std_logic;
  input 	: in std_logic_vector (7 downto 0);
  go 		: in std_logic;
  rst 		: in std_logic;
  Tx 		: out std_logic);
end component;

begin
C0 : Diviseur_emission 	port map(clk => clk, tick => tick);
C1 : MAE_emission 	port map(clk => clk, tick => tick, input => input, go => go, rst => rst, Tx => Tx);
end behav;