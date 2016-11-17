.model small

.code

	lea si, l1
	mov cl, 4
	add si, 1
	add cs:[si], cl
	mov ah, 2
	mov dl, 65
	l1:
	jmp l2
	int 33
	l2:
	int 33
	int 33
	int 33
	mov ah, 76
	int 33


end