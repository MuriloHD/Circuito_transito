ENTITY portaNOT IS
PORT(en17:IN BIT;
		s7:OUT BIT
);
END portaNOT;
ARCHITECTURE comportamento OF portaNOT IS 
BEGIN 
	s7<= not en17;
END;	