.model small


.code

	
	mov ah, 2

	mov cx, 5

a:
	mov bh, cl
	mov dl, 65
	call xyz
	loop a
	

	mov ah, 76
	int 33

xyz proc
	
	cmp bh, 0
	je f
	
	int 33
	dec bh
	inc dl
	call xyz
	ret
f:
	ret
xyz endp

end