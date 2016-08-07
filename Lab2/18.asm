.model small
.code
i33:
	INT 33
	CMP AH, 2
	JE exit
	MOV DL, 'C'
	MOV AH, 2
	JMP i33
exit:
	MOV AH, 76
	INT 33
END