.model small
.code

	mov dx, 25665
	mov ah, 2
	int 33
	mov dl, dh
	int 33

	mov ah, 76
	int 33



end