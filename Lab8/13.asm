.model small


.code
	mov ah, 1
	int 33

	mov dh, al
	mov dl, 00000000b

	shr dx, 1
	add dl, 128


	mov cl,7
	shr dx, cl 


	mov ah, 2
	int 33

	mov ah, 76
	int 33

end