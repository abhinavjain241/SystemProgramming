; if sum of digits is even then A else B

.model small
.code
	MOV DL, 'A'
	MOV AH, 1
	INT 33

	MOV CL, 0
lop:
	INC CL
	SUB AL, 10
	CMP AL, 9
	JG lop

	ADD AL, CL
	TEST AL, 1
	JZ even
	INC DL

even:
	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33
END