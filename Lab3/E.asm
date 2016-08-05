.model small
.code
	MOV DL, 0
	MOV AH, 1
	MOV CX, 10
	Lk:
	INT 33
	SUB AL, 48
	ADD DL, AL
	LOOP Lk
	
	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33	
END