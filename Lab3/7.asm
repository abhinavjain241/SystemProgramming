.model small
.code
	MOV AH, 1
	INT 33

	MOV BL, AL
	INT 33
	SUB AL, BL
	MOV CL, AL
	INC CL
	MOV CH, 0

	MOV AH, 2
	MOV DL, BL


L:	
	INT 33
	INC DL
	LOOP L

	MOV AH, 76
	INT 33

END