.model small


.code

	mov ah, 1
	int 33
	sub al, 80
	mov bl, al

	mov ax, 1000
	idiv bl

	mov dx, ax
	mov ah, 2
	add dl, 75
	int 33

	mov dl, dh
	add dl, 75
	int 33

	mov ah, 76
	int 33



end