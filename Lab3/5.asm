.model small
.code
	MOV AH, 1
	INT 33

	AND AL, 0FH

	MOV CL, AL
	MOV CH, 0

	MOV AH, 2
	MOV DL, 'K'

L:	INT 33
	LOOP L

	MOV AH, 76
	INT 33


END