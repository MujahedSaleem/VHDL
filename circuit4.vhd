library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity circuit4 is
PORT( x,Clk: in std_logic;
Q, QB,F: out std_logic);
end circuit4;

ARCHITECTURE behaviour of circuit4 is 
signal t1,t3,t4,t5,t6: std_logic;
signal t2,t7,t8: std_logic :='0';

component T_FF is 
PORT (
		T : IN std_logic;
		Clk : IN std_logic;
		Q : OUT std_logic;
		Qb : OUT std_logic
	);
END component;

component mux is 
Port (
		SEL : In STD_LOGIC;
		A : In STD_LOGIC;
		B : In STD_LOGIC;
		X : Out STD_LOGIC
	);
End component;

component JK_FF is
PORT( J,K,Clk: in std_logic;
Q, QB: out std_logic);
end component;

component DFlipFlop is 
   port(
      Q : out std_logic;
      Qp: out std_logic;		
      Clk :in std_logic;   
      D :in  std_logic    
   );
end component;

begin 

A: T_FF port map (x,Clk,t1,t2);
B: DFlipFlop port map (t3,t4,Clk,t2);
C: mux port map (t1,x,t3,t5);
D: mux port map(t8,t4,x,t6);
E: JK_FF port map(t5,t6,Clk,t7,t8);
F <= t7 or x;
Q <= t7;
QB <= t8;
end behaviour;
