library ieee;
use ieee.std_logic_1164.all;

entity IPUart is port(
clk : in std_logic;
input : in std_logic_vector (7 downto 0);
go : in std_logic;
rst : in std_logic;
Tx : out std_logic;
Rx : in std_logic;
dataValid : out std_logic;
Rx_Error : out std_logic;
output : out std_logic_vector (7 downto 0));
end IPUart;

architecture behav of IPUart is
signal tick : std_logic;

component emission port(
clk : in std_logic;
input : in std_logic_vector (7 downto 0);
go : in std_logic;
rst : in std_logic;
Tx : out std_logic);
end component;

component reception port(
clk : in std_logic;
Rx : in std_logic;
rst : in std_logic;
dataValid : out std_logic;
Rx_Error : out std_logic;
output : out std_logic_vector (7 downto 0));
end component;

begin
C0 : emission port map(clk => clk, input => input, go => go, rst => rst, Tx => Tx);
C1 : reception port map(clk => clk, Rx => Rx, rst => rst, dataValid => dataValid, Rx_Error => Rx_Error, output => output);
end behav;