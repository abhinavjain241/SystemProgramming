.model small
.code
	MOV AH, 2
	MOV DL, 65
	INT 21H
K:
	MOV AH, 2
	MOV DL, 66
	INT 21H
	MOV AH, 76
	INT 33
END