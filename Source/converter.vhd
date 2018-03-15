library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity converter is port(
  input 		: in std_logic_vector (7 downto 0);
  output 		: out std_logic_vector (7 downto 0));
end converter;

architecture behav of converter is
signal temp 	: unsigned (7 downto 0);
signal sig : unsigned (7 downto 0);

begin
  temp <= unsigned(input)-48;
  sig <= (temp sll 4) + temp + temp + temp + temp;
  output <= std_logic_vector(sig);
end behav;