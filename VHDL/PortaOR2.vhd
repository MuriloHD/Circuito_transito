LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PortaOR2 IS
	PORT(en1,en2: IN BIT;
			S: OUT BIT);
END PortaOR2;

ARCHITECTURE comportamento OF PortOR2 IS 
BEGIN
	S <= en1 OR en2;
			
END;			
					
					