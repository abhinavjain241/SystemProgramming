.model small

.code

	mov ah, 2
	lea si, l2
	mov cl, cs:[si+1]
	add cl, 2
	mov cs:[si+1], cl
	mov dl, 65
	l2:
	jmp l1
	l1:
	int 33
	int 33
	mov ah, 76
	int 33

end