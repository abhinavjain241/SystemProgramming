.model small
.code
	
	MOV AH, 1
	INT 33
	XOR BL, BL
	MOV CX, 10

	AND AL, 0FH

L:	ADD BL,AL 
	LOOP L

	INT 33
	AND AL, 0FH
	ADD BL, AL

	MOV AH, 2
	MOV DL, BL
	INT 33

	MOV AH, 76
	INT 33


END