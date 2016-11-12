.model small

.code

	mov ah, 2
	mov bl, 5
	jmp l2
	l1:
	mov dl, 65
	mov bl, dl
	int 33
	mov ah, 76
	int 33
	l2:
	mov si, offset l1
	mov cs:[8], word ptr 67
	jmp l1


end