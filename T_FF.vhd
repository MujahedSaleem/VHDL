LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY T_FF IS
	PORT (
		T : IN std_logic;
		Clk : IN std_logic;
		Q : OUT std_logic;
      Qb : OUT std_logic

	);
END T_FF;

ARCHITECTURE Behavioral OF T_FF IS
	SIGNAL tmp : std_logic;
BEGIN
	PROCESS (Clk)
	BEGIN
		IF (rising_edge(Clk)) THEN

			IF T = '0' THEN
				tmp <= tmp;
			ELSIF T = '1' THEN
				tmp <= NOT (tmp);
			END IF;
		END IF;
	END PROCESS;
	Q <= tmp;
	Qb<=not tmp;
END Behavioral;