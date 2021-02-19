ENTITY portaEND3Entradas IS
PORT(en10,en11,en12:IN BIT;
		s5:OUT BIT
);
END portaEND3Entradas;

ARCHITECTURE comportamento OF portaEND3Entradas IS
BEGIN 
	s5 <= en10 and en11 and en12;
END;
	