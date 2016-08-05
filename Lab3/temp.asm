.model small
.code
	MOV AH, 1
	INT 33

	MOV BL, AL
	INT 33
	SUB BL, AL
	MOV CL, BL
	INC CL
	MOV CH, 0

	MOV AH, 2
	MOV DL, AL
	ADD DL, CL


L:	
	DEC DL
	INT 33
	LOOP L

	MOV AH, 76
	INT 33


END