Library IEEE;
USE IEEE.Std_logic_1164.all;

entity DFlipFlopSync is 
   port(
      Q : out std_logic;
      Clk :in std_logic     
   );
end DFlipFlopSync;

architecture circuit of  DFlipFlopSync is 

component DFlipFlop is 
  port(
      Q : out std_logic;
      Qp: out std_logic;		
      Clk :in std_logic;   
      D :in  std_logic    
   );
	end component;
signal t1,t2,t3,t4,t5,t6: std_logic :='0';
begin 
A: DFlipFlop port map (t1,t2,Clk,t2);
B: DFlipFlop port map (t3,t4,t1,t4);
c: DFlipFlop port map (t5,t6,t3,t6);

Q <= t6;
end circuit;