library ieee;
use ieee.std_logic_1164.all;

entity loop0 is port(
  tick     	: in std_logic;
  dataValid	: in std_logic;
  rst		: in std_logic;
  start		: out std_logic);
end loop0;

architecture behav of loop0 is
signal i : natural;

begin
clocked : process(tick, rst)
begin
  if (rst = '1') then
    start <= '0';
    i <= 0;
  elsif (tick'event and tick = '1') then
    if (dataValid = '1') then
      start <= '1';
      i <= 1;
    end if;
    if i = 1 then
      for k in 0 to 1000000000 loop
		end loop;
		i <= 0;
		start <= '0';
    end if;
  end if;
end process clocked;
end behav; 