.model small
.code
	mov CL, 100
	mov BH, 205
	ADD CL, BH
	mov AH, 2
	mov DL, 63
	sbb DL,2
	int 33
	MOV AH, 76
	int 33
end