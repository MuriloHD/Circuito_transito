ENTITY portaOR3Entradas IS
PORT(en0,en1,en2: IN BIT;
		s1: OUT BIT
		
);
END portaOR3Entradas;

ARCHITECTURE comportamento OF portaOR3Entradas IS
BEGIN

s1 <= en0 or en1 or en2;
END;