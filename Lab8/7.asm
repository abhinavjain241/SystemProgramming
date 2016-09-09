.model small


.code

	mov dh, 76
	shr dh, 1
	shr dh, 1
	shr dh, 1
	shr dh, 1
	shr dh, 1
	shr dh, 1

	
	mov dl, 0

	shr dx, 1
	shr dx, 1



	mov ah, 76
	shr ah, 1
	shr ah, 1
	shr ah, 1
	shr ah, 1
	shr ah, 1
	int 33

	mov ah, 76
	int 33

end