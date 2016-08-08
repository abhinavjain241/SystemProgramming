.model small
.code
	MOV AH, 1
	INT 33
	XOR CX, CX
	
start:
	CMP AL, 9
	JLE exit
	INC CL
	SUB AL, 10
	JMP start

exit:
	MOV DL, 'A'
	TEST CL, 1
	JZ print
	INC DL

print:
	MOV AH, 2
	INT 33
	MOV AH, 76
	INT 33
END