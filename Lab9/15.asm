.model small


.code

	mov al, 8
	mov ah, 9

	
	call xyz
	mov dl, cl
	mov ah,	2
	int 33

	mov ah, 76
	int 33

xyz proc
	
	cmp ah, 0
	je f
	
	dec ah
	call xyz
	add cl, al
	ret
f:
	mov cl, 0
	ret
xyz endp

end