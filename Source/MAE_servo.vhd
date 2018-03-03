library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAE_servo is port(
  clk 			: in std_logic;
  tick 			: in std_logic;
  input 		: in std_logic_vector (7 downto 0);
  go 			: in std_logic;
  rst 			: in std_logic;
  output0 		: out std_logic_vector (7 downto 0);
  output1 		: out std_logic_vector (7 downto 0);
  output2 		: out std_logic_vector (7 downto 0);
  dataValid0 		: out std_logic;
  dataValid1 		: out std_logic;
  dataValid2 		: out std_logic;
  input_Error 		: out std_logic);
end MAE_servo;

architecture behav of MAE_servo is
signal i 		: natural := 0;
signal regSelector 	: std_logic_vector (7 downto 0) := (others => '0');
signal regValue 	: std_logic_vector (7 downto 0) := (others => '0');
type state_type is
(Etat0, Etat1, Etat2, Etat3, Etat4, Etat5);
signal EtatPresent: state_type;

begin
clocked : process(clk, rst)
begin
  if (rst = '1') then
    i <= 0;
    regSelector <= (others => '0');
    regValue <= (others => '0');
    output0 <= (others => '0');
    dataValid0 <= '0';
    output1 <= (others => '0');
    dataValid1 <= '0';
    output2 <= (others => '0');
    dataValid2 <= '0';
    EtatPresent <= Etat0;
  elsif (clk'event and clk = '1') then
    case EtatPresent is

    when Etat0 =>
      i <= 0;
      regSelector <= (others => '0');
      regValue <= (others => '0');
      output0 <= (others => '0');
      dataValid0 <= '0';
      output1 <= (others => '0');
      dataValid1 <= '0';
      output2 <= (others => '0');
      dataValid2 <= '0';
      input_Error <= '0';
      if (go = '1' and tick = '1' and input = "01110011") then
	EtatPresent <= Etat1;
      end if;

    when Etat1 =>
      if (go = '1' and tick = '1') then
        EtatPresent <= Etat2;
      end if;

    when Etat2 =>
      regSelector <= input;
      if (go = '1' and tick = '1') then
        EtatPresent <= Etat3;
      end if;

    when Etat3 =>
      regValue <= input;
      if (tick = '1' and (regSelector = "00110000" or regSelector = "00110001" or regSelector = "00110010")) then
        EtatPresent <= Etat4;
      elsif (tick = '1') then
	EtatPresent <= Etat5;
      end if;

    when Etat4 =>
      EtatPresent <= Etat0;
      if (regSelector = "00110000") then
        dataValid0 <= '1';
        output0 <= regValue;
      elsif (regSelector = "00110001") then
	dataValid1 <= '1';
	output1 <= regValue;      
      else
	dataValid2 <= '1';
	output2 <= regValue;
      end if;

    when Etat5 =>
      input_Error <= '1';
      EtatPresent <= Etat0;

    end case;
  end if;
end process clocked;
end behav;