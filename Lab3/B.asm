.model small
.code
	MOV DL, 64
	MOV AH, 2
	MOV CL, 5
	MOV CH, 0

Y:
	INC DL
	INT 33
	LOOP Y
	MOV AH, 76
	INT 33


END

