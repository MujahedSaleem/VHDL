Library IEEE;
USE IEEE.Std_logic_1164.all;

entity circuit  is 
   port(
      Qout : out std_logic;    
		Qpout : out std_logic;    
      Clk :in std_logic;   
      M :in  std_logic;    
		N :in  std_logic    
   );
end circuit ;

architecture Behavioral of circuit  is  

component DFlipFlop is 
   port(
      Q : out std_logic;
      Qp: out std_logic;		
      Clk :in std_logic;   
      D :in  std_logic    
   );
end component;

signal t1,t2,t3,t4,t5: std_logic;
signal t6: STD_LOGIC :='0';
signal t7: STD_LOGIC :='0';


begin  

 process(Clk)
 begin 
   t1 <= t6 xnor M ;
	t2 <= t7 Xor N;
	t3 <= t1 or t2;
 end process;  

G1: DFlipFlop port map (t7,t6,Clk,t3);  
Qpout <= t6;
Qout <= t7;      
end Behavioral;