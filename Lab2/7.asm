.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	INT 33
	MOV CH, AL

	MOV AH, 2

	;AND CL, 0FH

	CMP CH, '9'
	JLE num
	
	ADD CL, 9


num:
	
	AND CH, 0FH ; Gives the index of the Alphabet
	ADD CL, CH

exit:

	MOV DL, CL
	INT 33

	MOV AH, 76
	INT 33
END				 