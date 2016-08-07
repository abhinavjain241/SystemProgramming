.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	INT 33
	MOV CH, AL

	MOV AH, 2

	SUB CL, CH

	CMP CL, 9
	JLE num
	
	SUB CL, 10 ; Gives the index of the Alphabet
	ADD CL, 'A'

	JMP exit

num:
	
	ADD CL, '0'

exit:

	MOV DL, CL
	INT 33

	MOV AH, 76
	INT 33
END				 