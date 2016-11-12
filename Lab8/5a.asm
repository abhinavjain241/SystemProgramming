.model small


.code

	mov ah, 2

	mov dh, 2
	shr dh, 1
	
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1
	shr dl, 1

	shr dx, 1
	shr dx, 1
	int 33

	mov ah, 76
	int 33

end