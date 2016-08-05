.model small
.code
	MOV DL, 65
	MOV AH, 2
	;MOV CH, 90
	MOV CX, 5

hari:
	ADD DL, CL
	INT 33
	LOOP hari
	MOV DL, CH
	INT 33
	MOV AH, 76
	INT 33


END

