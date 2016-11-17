.model small


.code

	mov cl, 65
	call xyz
	mov cl, 69
	call xyz
	mov cl, 66
	call xyz
	mov ah, 76
	int 33

xyz proc
	mov dl, cl
	mov ah, 2
	int 33
	add dl, 3
	int 33
	sub dl, 2
	int 33
	add dl, 3
	int 33
	add dl, 5
	int 33
	mov dl, ','
	int 33
	ret
xyz endp

end