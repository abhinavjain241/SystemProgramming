.model small


.code

	mov ah, 1
	int 33

	sub al,80
	mov ah, al
	mov al, 0

	mov bl, -100

	idiv bl

	mov dx, ax
	mov ah,2
	add dl, 75
	int 33
	mov dl, dh
	add dl, 75
	int 33

	mov ah,76
	int 33


end