

.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	
	ADD CL, 30

	MOV DL, 'A'
	CMP CL, 100
	JG exit
	CMP CL, 0
	JL exit
	MOV DL, 'B'

exit:

	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33
END				 