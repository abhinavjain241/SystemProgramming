.model small


.code


	mov ah, 1
	int 33
	mov bl, al
	int 33
	
	mul bl

	mov bl, 100
	div bl

	mov dx, ax
	mov ah, 2
	int 33
	mov dl, dh
	int 33

	mov ah,76
	int 33
end