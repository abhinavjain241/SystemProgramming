.model small
.code
	MOV AH, 2
	MOV DL, 'F'

lop:
	INT 33
	DEC DL
	CMP DL, 'A'
	JAE lop

	MOV AH, 76
	INT 33
END				 