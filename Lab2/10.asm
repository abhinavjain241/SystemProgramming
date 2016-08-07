.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	INT 33
	MOV CH, AL

	MOV AH, 2

	CMP CH, CL
	JL exit
	
	MOV CL, CH

exit:

	MOV DL, CL
	INT 33

	MOV AH, 76
	INT 33
END				 