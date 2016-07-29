.model small
.code
	MOV AH, 1
	INT 33
	CMP AL, 97
	JGE L1
	MOV DL, 225
	JMP L2
L1: 
	MOV DL, 224
L2:
	MOV AH, 2
	INT 33
	MOV AH, 76
	INT 33
END