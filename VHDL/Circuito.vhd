ENTITY Circuito IS 
PORT(A,B,C,D: IN BIT;
		LO,NS: OUT BIT
);
END Circuito;
ARCHITECTURE comportamento OF Circuito IS
	SIGNAL c1:BIT; --	Saida NOT(A)
	SIGNAL c2:BIT; -- Saida NOT(B)
	SIGNAL c3:BIT; -- Saida NOT(C)
	SIGNAL c4:BIT; -- Saida NOT(D)
	-- LO
	SIGNAL c5:BIT;	-- Saida BC
	SIGNAL c6:BIT;	-- Saida Bc3D
	SIGNAL c7:BIT; -- Saida c2c3
	SIGNAL c8:BIT; -- Saida c2C
	SIGNAL c9:BIT; -- Saida c2 + c6 + c5
	SIGNAL c10:BIT; -- Saida c9c1
	SIGNAL c11:BIT; -- Saida c5 + c7
	SIGNAL c12:BIT; -- Saida c11D
	SIGNAL c13:BIT; -- Saida c12 + c8
	SIGNAL c14:BIT; -- c13A
	SIGNAL c15:BIT; -- Saida C10 + C13 (saida final) /LO
	-- NS
	SIGNAL c16:BIT; -- ABc3
	SIGNAL c17:BIT; -- ABc4
	SIGNAL c18:BIT; -- Ac2c3c4
	SIGNAL c19:BIT; -- c1Bc3c4
	SIGNAL c20:BIT; -- c16+c17+c18+c20
	-- Portas OR
	COMPONENT portaOR3Entradas IS 
		PORT(en0,en1,en2: IN BIT;
		s1:OUT BIT);
	END COMPONENT;	
	COMPONENT portaOR2Entradas IS
		PORT(en3,en4: IN BIT;
		s2:OUT BIT	);
	END COMPONENT;
	COMPONENT portaOR4Entradas IS
		PORT(en5,en6,en7,en81:IN BIT;
		s3:OUT BIT);
	END COMPONENT;
	-- Porta END
	COMPONENT portaEND2Entradas IS
		PORT(en8,en9:IN BIT;
		s4:OUT BIT);
	END COMPONENT;
	COMPONENT portaEND3Entradas IS
		PORT(en10,en11,en12:IN BIT;
		s5:OUT BIT);
	END COMPONENT;
	COMPONENT portaEND4Entradas IS
		PORT(en13,en14,en15,en16: IN BIT;
		S6:OUT BIT);
	END COMPONENT;
	-- PORTA NOT
	COMPONENT portaNOT IS
		PORT(en17:IN BIT;
		s7:OUT BIT);
	END COMPONENT;
	BEGIN
	-- LO
	u1:portaNOT PORT MAP(en17=>A,S7=>c1);
	u2:portaNOT PORT MAP(en17=>B,s7=>c2);
	u3:portaNOT PORT MAP(en17=>C,s7=>c3);
	u4:portaAND2Entradas PORT MAP(en8=>B,en9=>C,s4=>c5);
	u5:portaAND3Entradas PORT MAP(en10=>B,en11=>c3,en12=>D,s5=>c6);
	u6:portaAND2Entradas PORT MAP(en8=>c2,en9=>c3,s4=>c7);
	u7:portaAND2Entradas PORT MAP(en8=>c2,en0=>C,s4=>c8);
	u8:portaOR3Entradas PORT MAP(en0=>c2,en1=>c6,en2=>c5,s1=>c9);
	u10:portaAND2Entradas PORT MAP(en8=>c9,en9=>c1,s4=>c10);
	u11:portaOR2Entradas PORT MAP(en3=>c5,en4=>c7,s2=>c11);
	u12:portaAND2Entradas PORT MAP(en8=>c11,en9=>D,s4=>c12);
	u13:portaOR2Entradas PORT MAP(en3=>c12,en4=>c8,s2=>c13);
	u14:portaAND2Entradas PORT MAP(en8=>c13,en9=>A,s4=>c14);
	u15:portaOR2Entradas PORT MAP(en3=>c10,en4=>c14,s2=>LO);
	-- NS
	u16:portaNOT PORT MAP(en17=>D,s7=>c4);
	u17:portaAND3Entradas PORT MAP(en10=>A,en11=>B,en12=>c3,s5=>c16);
	u18:portaAND3Entradas PORT MAP(en10=>A,en11=>B,en12=>c4,s5=>c17);
	u19:portaEND4Entradas PORT MAP(en13=>A,en14=>c2,en15=>c3,en16=>c4,s6=>c18);
	u20:portaEND4Entradas PORT MAP(en13=>c1,en14=>B,en15=>c3,en16=>c4,s6=>c19);
	u21:portaOR4Entradas PORT MAP(en5=>c16,en6=>c17,en7=>c18,en81=>c19,s3=>NS);
	END;
	
	