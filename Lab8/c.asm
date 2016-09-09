.model small


.code

	mov cl, 50
	add cl, 250

	mov dl, 35
	rcl dl, 1
	mov ah, 2
	int 21h

	mov ah, 76
	int 33


end