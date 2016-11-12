.model small


.code
	

	mov ah, 2
	
	mov dl, 2

	ror dl, 1
	ror dl, 1
	ror dl, 1

	int 33
	
	mov ah, 76
	int 33


end