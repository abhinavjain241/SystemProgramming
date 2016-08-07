.model small
.code
	MOV AH, 1
	INT 33
	MOV DL, 225
	CMP AL, 97
	JL L1	
	DEC DL
L1: 
	MOV AH, 2
	INT 33
	MOV AH, 76
	INT 33
END