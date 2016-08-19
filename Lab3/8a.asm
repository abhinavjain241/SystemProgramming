.model small
.code
	MOV BH, 48
	MOV AH, 1
	MOV CX, 9
start:
	INT 33
	CMP AL, 'a'

	MOV BL, AL
	SUB BL, 'b'
	ADC BH, 0
	
	MOV BL, 96
	SUB BL, AL
	ADC BH, 0
	
	DEC BH
e2:
	LOOP start

	MOV DL, BH
	MOV AH, 2
	INT 33

	MOV AH, 76
	INT 33

END