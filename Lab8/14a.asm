.model small


.code


	mov ah, 1
	int 33

	mov dl, al
	mov dh, 0

	mov cl, 7
	shl dx, cl

	mov dl, dh
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end