.model small
.code
	MOV AH, 1
	INT 33

	AND AL, 0FH

	MOV CX, 10
	XOR DL, DL

L:	ADD DL, AL
	LOOP L

	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33


END