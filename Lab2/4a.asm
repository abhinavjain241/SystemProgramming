.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	INT 33
	MOV CH, AL

	MOV AH, 2

	AND CL, 0FH
	AND CH, 0FH
	SUB CH, CL

	CMP CH, 0
	JGE pos
	NEG CH
pos:
	ADD CH, '0'

	MOV DL, CH
	INT 33

	MOV AH, 76
	INT 33
END				