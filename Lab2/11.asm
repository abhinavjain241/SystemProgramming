;sign(a+30)>100 -> A
;a+30>100 && a+30<128 -> A in unsigned expression

.model small
.code
	MOV AH, 1
	INT 33
	MOV CL, AL
	
	ADD CL, 30

	MOV DL, 'B'
	CMP CL, 101
	JB exit
	CMP CL, 127
	JA exit
	MOV DL, 'A'

exit:

	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33
END				 