.model small


.code

	mov al, 103

	
	call xyz

	mov dl, cl
	mov ah,	2
	int 33

	mov ah, 76
	int 33

xyz proc
	
	cmp al, 0
	je f
	
	mov ah, 0
	mov bh, 3
	div bh
	mov bh, ah
	push bx
	call xyz
	pop bx
	add cl, bh

	ret
f:
	mov cl, 0
	ret
xyz endp

end