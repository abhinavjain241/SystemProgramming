.model small


.code

	mov dh, 76
	shr dh, 1
	shr dh, 1

	shr dx, 1

	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1

	shr dx, 1
	shr dl, 1

	mov ah,2
	int 33

	mov ah, 76
	int 33

end