.model small


.code


	mov dx, 40
	mov ax, 4000
	mov bx, 10000
	div bx
	mov cx, ax
	xchg dh, dl
	mov ah, 2
	int 21h
	mov dl, dh
	int 33
	mov dl, ch
	int 33
	mov dl, cl
	int 33

	mov ah, 76
	int 33


end