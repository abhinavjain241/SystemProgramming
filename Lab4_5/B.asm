.model small
.code

	mov ch, 3
	mov cl, 32
	mov dl, 'P'
	cmp cx, 800
	jne l1
	mov dl, 'Q'
l1:
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end