.model small

.code


	mov ah, 2
	jmp l2
	l1:
	mov dl, 65
	int 33
	mov ah, 76
	int 33
	l2:
	mov cl, 66
	mov cs:[6], cl
	jmp l1
end