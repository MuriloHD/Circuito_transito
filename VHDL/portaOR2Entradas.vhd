ENTITY portaOR2Entradas IS 
PORT(en3,en4: IN BIT;
		s2: OUT BIT	
);
END;

ARCHITECTURE comportamento OF portaOR2Entradas IS
BEGIN 
s2 <= en3 or en4;
END;
