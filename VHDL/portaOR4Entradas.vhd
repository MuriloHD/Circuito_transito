ENTITY portaOR4Entradas IS
PORT(en5,en6,en7,en81:IN BIT;
		s3:OUT BIT
		
);
END portaOR4Entradas;
ARCHITECTURE comportamento OF portaOR4Entradas IS
BEGIN 
	s3 <= en5 or en6 or en7 or en81;
END;	