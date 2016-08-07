.model small
.code
	MOV AH, 2
	MOV DL, 'A'
	MOV CL, 1
lop:
	INT 33
	ADD DL, CL
	INC CL
	
	CMP CL, 6
	JLE lop

	MOV AH, 76
	INT 33
END				 