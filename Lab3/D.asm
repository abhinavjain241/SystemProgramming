; Computing mode 7

.model small
.code
	MOV AH, 1
	INT 33

L:	SUB AL, 7
	CMP AL, 7
	JGE L
	
	OR AL, 48
	MOV DL, AL
	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33


END

