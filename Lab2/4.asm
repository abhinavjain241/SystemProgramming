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
	ADD CH, CL

	CMP CH, 9
	JLE printLast

	; Print first digit i.e. 1 for A>=10
	MOV DL, '1'
	INT 33

	SUB CH, 10
	
printLast:

	ADD CH, '0'

	MOV DL, CH
	INT 33

	MOV AH, 76
	INT 33
END