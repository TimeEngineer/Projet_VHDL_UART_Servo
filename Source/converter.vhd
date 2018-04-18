library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity converter is port( -- Convert digit 0-9 to ascii code
  input 		: in std_logic_vector (7 downto 0);
  output 		: out std_logic_vector (7 downto 0));
end converter;

architecture behav of converter is
signal temp 		: unsigned (7 downto 0);
signal sig 		: unsigned (7 downto 0);

begin
  temp <= unsigned(input)-48; 				-- 0 digit set to 0 ascii code
  sig <= (temp sll 4) + temp + temp + temp + temp; 	-- *20 (1 digit = 20°)
  output <= std_logic_vector(sig);
end behav;