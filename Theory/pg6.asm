TITLE PG6:REVERSE
.MODEL SMALL
 .STACK 100H
 .CODE
 MAIN PROC
 	MOV AH, 2
 	MOV DL, '?'
 	INT 33
 	XOR CX, CX
 	MOV AH, 1
 	INT 21H
W1:
	CMP AL, 0DH
	JE E1
	PUSH AX
	INC CX
	INT 21H
	JMP W1

E1: 
	MOV AH,2
	MOV DL, 0DH
	INT 21H
	MOV DL, 0AH
	INT 21H
	JCXZ E2
TOP:
	POP DX
	INT 21H
	LOOP TOP

E2:
	MOV AH, 76
	INT 33
MAIN ENDP
END MAIN