library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAE_servo is port(
  clk 			: in std_logic;							-- main clock
  input 		: in std_logic_vector (7 downto 0);				-- 1 byte input
  go 			: in std_logic;							-- message sended
  rst 			: in std_logic;							-- reset
  output0 		: out std_logic_vector (7 downto 0);				-- data for servo 0
  output1 		: out std_logic_vector (7 downto 0);				-- data for servo 1
  output2 		: out std_logic_vector (7 downto 0);				-- data for servo 2
  dataValid0 		: out std_logic;						-- data received by servo 0
  dataValid1 		: out std_logic;						-- data received by servo 1
  dataValid2 		: out std_logic;						-- data received by servi 2
  input_Error 		: out std_logic);						-- failed transmit
end MAE_servo;

architecture behav of MAE_servo is

signal regSelector 	: std_logic_vector (7 downto 0) := (others => '0'); 		-- register which retains number {0,1,2}
signal regValue 	: std_logic_vector (7 downto 0) := (others => '0');		-- register which retains value {ascii code}
type state_type is
(Etat0, Etat1, Etat2, Etat3, Etat4, Etat5, Etat6, Etat7);
signal EtatPresent: state_type;

begin
clocked : process(clk, rst)
begin
  if (rst = '1') then
    
    regValue <= (others => '0');
    dataValid0 <= '0';
    dataValid1 <= '0';
    dataValid2 <= '0';
    EtatPresent <= Etat0;
  elsif (clk'event and clk = '1') then
    case EtatPresent is

    when Etat0 =>
      
      regValue <= (others => '0');
      dataValid0 <= '0';
      dataValid1 <= '0';
      dataValid2 <= '0';
      input_Error <= '0';
      if (go = '1' and input = x"73") then						-- test if the input letter is "s" (keyboard)
	EtatPresent <= Etat1;
      end if;

    when Etat1 =>
      if (go = '0') then
        EtatPresent <= Etat2;
      end if;

    when Etat2 =>
      
      if (go = '1') then
        EtatPresent <= Etat3;
      end if;
	
    when Etat3 =>
      regSelector <= input;								-- select which servo {0,1,2} (keyboard)
      if (go = '0') then
        EtatPresent <= Etat4;
      end if;

    when Etat4 =>
      if (go = '1') then
        regValue <= input;								-- select the value {ascii input} (keyboard)
        EtatPresent <= Etat5;
      end if;
	  
    when Etat5 =>
      regValue <= input;
      if (regSelector = x"30" or regSelector = x"31" or regSelector = x"32") then 	-- test if selector is correct <--|
        EtatPresent <= Etat6;												--|
      else														--|
	EtatPresent <= Etat7;												--|
      end if;														--|
															--|
    when Etat6 =>													--|
      EtatPresent <= Etat0;												--|
      if (regSelector = x"30") then							-- test if selector is 0	--|
        dataValid0 <= '1';												--|
        output0 <= regValue;												--|
      elsif (regSelector = x"31") then							-- test if selector is 1	--|
	dataValid1 <= '1';												--|
	output1 <= regValue;      											--|
      else										-- test else (2) ---------------->|
	dataValid2 <= '1';
	output2 <= regValue;
      end if;

    when Etat7 =>									-- failed
      input_Error <= '1';
      EtatPresent <= Etat0;
    end case;
  end if;
end process clocked;
end behav;