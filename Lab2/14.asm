.model small
.code
	MOV AH, 1
	INT 33

	MOV DL, 'A'
	AND AL, 1
	JZ exit
	INC DL 

exit:
	MOV AH, 2
	INT 33
	
	MOV AH, 76
	INT 33
END				 