; Computing mode 7

.model small
.code
	MOV CX, 5

L:	

	MOV AH, 1
	INT 33
	MOV DL, AL
	MOV AH, 2
	INC DL
	INT 33
	LOOP L

	MOV AH, 76
	INT 33


END

