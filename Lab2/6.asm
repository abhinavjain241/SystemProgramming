.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	INT 33
	MOV CH, AL

	MOV AH, 2

	;AND CL, 0FH

	CMP CH, 'A'
	JE double
	
	INC CL
	JMP exit

double:
	
	AND CL, 0FH
	ADD CL, CL
	ADD CL, '0'

exit:

	MOV DL, CL
	INT 33

	MOV AH, 76
	INT 33
END				