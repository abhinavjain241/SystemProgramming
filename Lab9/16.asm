.model small


.code

	mov bl, 54
	mov bh, 42

	
	call xyz
	mov dl, cl
	mov ah,	2
	int 33

	mov ah, 76
	int 33

xyz proc
	
	cmp bh, 0
	je f
	

	mov ah, 0
	mov al, bl
	div bh
	mov bl, bh
	mov bh, ah
	call xyz

	ret
f:
	mov cl, bl
	ret
xyz endp

end