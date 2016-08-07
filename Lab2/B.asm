.model small
.code
	MOV CL, 100
	MOV BH, 130
	MOV AH, 2
	MOV DL, 65
	CMP CL, BH
	JA L1
	ADD DL, 1
L1: 
	INT 21h
MOV AH, 76
INT 21h
END


; Remember the difference between JG and JA | Once is for signed computation and another is for unsigned