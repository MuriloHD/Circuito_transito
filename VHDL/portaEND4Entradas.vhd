ENTITY portaEND4Entradas IS
PORT(en13,en14,en15,en16: IN BIT;
		S6: OUT BIT
);
END portaEND4Entradas;
ARCHITECTURE comportamento OF portaEND4Entradas IS
BEGIN
	s6 <= en13 and en14 and en15 and en16;
END;	