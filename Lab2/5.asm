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
	SUB CL, CH

	CMP CL, 0
	JGE pos
	MOV DL, '-'
	INT 33
	NEG CL
pos:
	ADD CL, '0'

	MOV DL, CL
	INT 33

	MOV AH, 76
	INT 33
END				