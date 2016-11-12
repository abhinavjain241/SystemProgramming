.model small

.code

	mov ah, 2
	mov dl, 9
	mov cl, 3

	shl dl, cl
	int 33

	mov ah, 76
	int 33

end