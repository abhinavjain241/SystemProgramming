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
	mov cx, 45570
	lea si, l1
	add si, 1
	mov cs:[si], cx
	jmp l1

end