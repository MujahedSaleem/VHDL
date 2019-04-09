Library IEEE;
Use IEEE.STD_LOGIC_1164.All;

Entity mux Is
	Port (
		SEL : In STD_LOGIC;
		A : In STD_LOGIC;
		B : In STD_LOGIC;
		X : Out STD_LOGIC
	);
End mux;

Architecture Behavioral Of mux Is
Begin
	X <= A When (SEL = '1') Else
	     B;
End Behavioral;