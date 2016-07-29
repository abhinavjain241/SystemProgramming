.model small
.code
	MOV AH, 1
	INT 33
	MOV AH,2
	MOV DL, 226

	CMP AL, 97
	JAE E1
	CMP AL, 65
	JAE E2

	JMP E3
E1:
	SUB DL, 1
E2:
	SUB DL, 1

E3:
	INT 33
	MOV AH, 76
	INT 33

END