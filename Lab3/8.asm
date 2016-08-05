.model small
.code
	MOV BH, 48
	MOV AH, 1
	MOV CX, 9
start:
	INT 33
	CMP AL, 'a'
	JNE e2
	INC BH
e2:
	LOOP start

	MOV DL, BH
	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33


END