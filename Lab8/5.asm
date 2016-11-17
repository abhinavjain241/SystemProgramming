.model small


.code

	mov ah, 2

	mov dh, 1
	mov dl, 0

	shr dx, 1
	shr dx, 1
	int 33

	mov ah, 76
	int 33

end