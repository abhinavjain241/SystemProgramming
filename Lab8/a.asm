.model small

.code

	mov ah, 2
	mov dl, 40
	shl dl, 1
	int 33

	mov ah, 76
	int 33

end