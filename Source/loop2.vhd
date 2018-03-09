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
signal reg 	: std_logic_vector (7 downto 0);
signal i 	: natural;

begin
clocked : process(clk, rst)
begin
  if (rst = '1') then
    start <= '0';
    reg <= (others => '0');
  elsif (clk'event and clk = '1') then
    if (dataValid = '1') then
      reg <= input;
      i <= 0;
      start <= '1';
    end if;
    output <= reg;
    if (i < 2500000) then
      i <= i+1;
    else
	start <= '0';
    end if;
  end if;
end process clocked;
end behav;