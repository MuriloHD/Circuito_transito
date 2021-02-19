ENTITY portaEND2Entradas IS
PORT(en8,en9:IN BIT;
		s4:OUT BIT
);
END portaEND2Entradas;

ARCHITECTURE comportamento OF portaEND2Entradas IS
BEGIN
	s4<= en8 and en9;
END;	