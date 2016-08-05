.model small
.code

	MOV AH, 1
	INT 33
	MOV DL, AL
	MOV AH, 2

	MOV CX, 10

L:	INT 33
	LOOP L
	
	MOV AH, 76
	INT 33


END

