.model small
.code
 	MOV AH, 2
 	MOV DL, 65
L:	INT 21H
	ADD DL,1 
	CMP DL ,90
	JLE L
	MOV AH, 76
	INT 33
END