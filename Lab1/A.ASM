.model small

.code

	mov AH, 1
	int 33
	mov DL,AL
	mov AH, 2
	add DL, 1
	int 33
	mov AH, 76
	int 33

end
