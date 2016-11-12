.model small

.code

	mov ah, 2
	mov dl, 70
	jmp l2
	l1:
	mov cl, 72
	int 33
	mov ah, 76
	int 33
	
	l2:
	mov bx, 513
	lea si, l1
	add cs:[si], bx
	jmp l1

end