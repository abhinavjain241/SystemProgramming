.model small

.code
	mov ah,2 
	mov dl, 48
	mov bl, 75
	jmp l2
	l1:
	mov bl, dl
	int 33
	mov ah, 76
	int 33
	l2:
	mov cl, 1
	lea si, l1
	sub cs:[si], cl
	jmp l1

end