.model small


.code


	mov ah, 1
	int 33

	mov ah, 0
	mov bl, 7

	mul bl
	mov bl, 5

	div bl
	mov dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33
end