.model small
.code

	mov ah, 2
	jmp l2
	l1:
	mov dl, 65
	int 33
	add dl, 40
	int 33
	mov ah, 76
	int 33
	l2:
	mov cl, 178
	lea si, l1
	add si, 2
	mov cs:[si], cl
	jmp l1


end