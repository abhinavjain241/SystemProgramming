.model small
.code
	mov DL, 40
	mov BH, 32
	mov AH, 2
	add DL, BH
	int 33
	mov DL, 90
	sub DL, 248
	int 33
	mov AH, 76
	int 33
end