.model small


.code

	mov al, 8
	mov ah, 4
	
	call xyz

	mov dl, cl
	mov ah,	2
	int 33

	mov ah, 76
	int 33

xyz proc
	
	cmp al, ah
	je f
	cmp ah, 0
	je f


	dec al
	push ax
	call xyz
	pop ax

	push cx
	
	dec ah
	call xyz
	pop bx
	add cl, bl


	ret
f:
	mov cl, 1
	ret
xyz endp

end