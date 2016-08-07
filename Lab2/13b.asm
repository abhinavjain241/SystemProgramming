.model small
.code
	MOV AH, 2
	MOV DL, 'A'
	MOV CL, 6
lop:
	INT 33
	LOOP lop

	MOV AH, 76
	INT 33
END				 