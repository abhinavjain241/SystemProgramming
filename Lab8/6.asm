.model small


.code

	mov dh, 76
	mov dl, 2

	shr dx, 1
	shr dx, 1
	
	mov dh, 76
	shr dx, 1
	shr dx, 1
	
	shr dx, 1
	shr dx, 1
	
	shr dx, 1
	shr dx, 1
	
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end