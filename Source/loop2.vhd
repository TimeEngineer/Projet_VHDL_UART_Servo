library ieee;
use ieee.std_logic_1164.all;

entity loop2 is port(
  clk     	: in std_logic;
  input   	: in std_logic_vector (7 downto 0);
  dataValid	: in std_logic;
  rst		: in std_logic;
  output	: out std_logic_vector (7 downto 0);
  start		: out std_logic);
end loop2;

architecture behav of loop2 is
signal i 	: natural;

begin
clocked : process(clk, rst)
begin
  if (rst = '1') then
    start <= '0';
    i <= 0;
  elsif (clk'event and clk = '1') then
    if (dataValid = '1') then
      output <= input;
      start <= '1';
      i <= 0;
    end if;
    i <= i + 1;
    if (i = 2500000) then
      i <= 0;
      start <= '0';
    end if;
  end if;
end process clocked;
end behav;