library ieee;
use ieee.std_logic_1164.all;

entity reception is port(
clk : in std_logic;
Rx : in std_logic;
rst : in std_logic;
dataValid : out std_logic;
Rx_Error : out std_logic;
output : out std_logic_vector (7 downto 0));
end reception;

architecture behav of reception is
signal tick : std_logic;
signal clear : std_logic;

component Diviseur_reception port(
clk : in std_logic;
clr : in std_logic;
tick : out std_logic);
end component;

component MAE_reception port(
clk : in std_logic;
tick : in std_logic;
Rx : in std_logic;
rst : in std_logic;
clr : out std_logic;
dataValid : out std_logic;
Rx_Error : out std_logic;
output : out std_logic_vector (7 downto 0));
end component;

begin
C0 : Diviseur_reception port map(clk => clk, clr => clear, tick => tick);
C1 : MAE_reception port map(clk => clk, tick => tick, Rx => Rx, rst => rst, clr => clear, dataValid => dataValid, Rx_Error => Rx_Error, output => output);
end behav;
