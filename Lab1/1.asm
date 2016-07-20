.model small
.code
	mov AH,2
	mov DL,65
	int 33
	mov DL,98
	int 33
	int 33
	mov AH, 76
	int 33
end