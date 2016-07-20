.model small
.code
	
	mov AH, 1
	int 33
	mov DL, AL
	int 33
	sub DL, AL
	add DL, 48
	mov AH, 2
	int 33


	MOV AH, 76
	int 33
end