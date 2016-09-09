.model small


.code

	mov ah, 2
	mov cl, 41
	shr cl, 1
	mov dl, 65
	adc dl, 0
	int 33

	mov ah, 76
	int 33


end