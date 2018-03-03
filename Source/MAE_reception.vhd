library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAE_reception is port(
  clk: in std_logic; 
  tick: in std_logic;
  Rx: in std_logic; --Rx=recepteur
  rst: in std_logic;
  clr: out std_logic;
  dataValid: out std_logic; -- pour dire qu'on a le paquet de 8 bits
  Rx_Error:out std_logic;
  output: out std_logic_vector (7 downto 0)); 
end MAE_reception; 

architecture behav of MAE_reception is 
  signal reg : std_logic_vector (7 downto 0) := (others => '0');
  signal i : natural := 0;  --i est le compteur  
  type state_type is
  (Etat0,Etat1,Etat2,Etat3,Etat4,Etat5,Etat6,Etat7,Etat8,Etat9);
  signal EtatPresent: state_type;

  begin
  clocked : process(clk,rst)
  begin 
    if (rst = '1') then
      reg <= (others => '0');
      i <= 0;
      EtatPresent <= Etat0;  -- si on est dans un etat x et qu'on a reset = 1 on va donc revenir a� L'etat 0
    elsif (clk'event and clk = '1') then     
      case EtatPresent is   
      When Etat0 =>
		    i <= 0;
                    dataValid <= '0';  
                    if (Rx = '0') then  
                      EtatPresent <= Etat1;
                    End if;                
      When Etat1 => 
                    clr <= '1';  
                    EtatPresent <= Etat2;
      When Etat2 =>  
                    clr <= '0';
                    if (tick = '1') then 
                      EtatPresent <= Etat3;
                    end if;                    
      When Etat3 => 
		    if (tick = '1') then  
                      EtatPresent <= Etat4;   
		      if (i = 8) then  
                        EtatPresent <= Etat5; 
                      else
                        reg(i) <= Rx;
                        i <= i+1;
                      end if;
                    end if; 
      When Etat4 =>
                    if (tick = '1') then 
                      EtatPresent <= Etat3;
                    end if;                  
      When Etat5 =>
                    if (tick = '1') then 
                      EtatPresent <= Etat6;
                    end if;      
      When Etat6 =>
                    if (tick = '1') then 
                      EtatPresent <= Etat7;
                    end if;                    
      When Etat7 =>
                    if (Rx = '0') then 
                      EtatPresent <= Etat8;
                    elsif (Rx = '1') then
                      EtatPresent <= Etat9;
                    end if;                                        
      When Etat8 =>
                    Rx_Error <= '1';
                    EtatPresent <= Etat0;                          
      When Etat9 =>
                    Rx_Error <= '0';
                    dataValid <= '1';  
                    output <= reg; 
                    EtatPresent <= Etat0;      
     end case; 
    end if;
  end process clocked;
end architecture;