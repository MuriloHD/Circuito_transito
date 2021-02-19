ENTITY portaOR IS
PORT(A,B: IN BIT;
		S: OUT BIT
	
);
END portaOR;

ARCHITECTURE comportamento OF portaOR IS
BEGIN 
	S <= A OR B;
END;	
	