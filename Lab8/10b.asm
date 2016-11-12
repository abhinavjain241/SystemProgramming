.model small


.code
	mov ah, 1
	int 33

	mov dh, al
	shr dl, 1
	shr dh, 1

	shr dx, 1
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