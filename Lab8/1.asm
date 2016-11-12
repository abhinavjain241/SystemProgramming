.model small


.code
	
	mov ah, 2
	mov dl, 2
	mov cl, 2
	
	shl dl, cl
	shl dl, cl
	shl dl, 1
	
	int 33

	mov ah, 76
	int 33



end