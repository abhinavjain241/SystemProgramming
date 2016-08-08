.model small
.code
start:
	INT 33
	MOV AH, 76
	JMP start
e1:
	MOV AH, 2
	MOV DL, 'C'
	JMP start
END e1