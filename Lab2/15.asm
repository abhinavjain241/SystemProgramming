.model small
.code
	MOV AH, 1

	INT 33
	AND AL, 1
	JNZ odd

	INT 33
	AND AL, 1
	JNZ odd

	MOV DL, 'A'
	JMP e
odd:
	INT 33
	MOV DL, 'B'
e:	
	MOV AH, 2
	INT 33	
	MOV AH, 76
	INT 33
END