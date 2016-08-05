.model small
.code
	MOV DL, 65
	MOV AH, 2
M:  MOV CX, 3
L:	INT 33
	LOOP L
	ADD DL,1

	CMP DL, 70
	JLE M
	MOV AH, 76
	INT 33


END