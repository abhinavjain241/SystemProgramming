.model small
.code
	MOV DL, 65
	MOV AH, 2
	MOV CX, 5
	Lk:
	INT 33
	
	LOOP Lk
	
	MOV AH, 76
	INT 33	
END