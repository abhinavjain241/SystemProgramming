.model small


.code

	mov ah, 1
	int 33

	shr al, 1

	mov dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33


end