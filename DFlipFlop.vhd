Library IEEE;
USE IEEE.Std_logic_1164.all;

entity DFlipFlop is 
   port(
      Q : out std_logic;
      Qp: out std_logic;		
      Clk :in std_logic;   
      D :in  std_logic    
   );
end DFlipFlop;
architecture Behavioral of DFlipFlop is  
begin  
 process(Clk)
 begin 
    if(rising_edge(Clk)) then
   Q <= D; 
	Qp <= not D;
    end if;       
 end process;  
end Behavioral;