.model small


.code

	mov al, 200
	mov ah, 3

	
	call xyz
	mov dl, cl
	mov ah,	2
	int 33

	mov ah, 76
	int 33

xyz proc
	
	cmp al, ah
	jb f
	
	sub al, ah
	call xyz
	inc cl
	ret
f:
	mov cl, 0
	ret
xyz endp

end