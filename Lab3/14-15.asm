.model small

.code
	MOV AH, 1
	MOV CL, 1
	MOV DL, 0
	MOV DH, 0
L2:
	INT 33
	CMP AL, DL
	JBE L1
	MOV DH, DL
	MOV DL, AL
	JMP L3
L1:
	CMP AL, DH
	JBE L3
	MOV DH, AL
L3:
	INC CL
	CMP CL, 10
	JLE L2
	MOV AH, 2
	INT 33
	MOV DL, DH
	INT 33
	MOV AH, 76
	INT 33
END