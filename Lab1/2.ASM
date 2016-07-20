.model small

.code
	mov AH, 2
	mov DL, 82
	int 33
	mov DL,97
	int 33
	mov DL,224
	int 33
	mov DL, 'm'
	int 33
	mov AH, 76
	int 33
end
