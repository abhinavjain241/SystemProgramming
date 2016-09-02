.model small


.code

	mov ah, 1
	int 33

	sub al,80
	cbw

	mov bl, -6
	idiv bl

	add al, 75
	add ah, 75

	mov dx, ax
	mov ah,2
	int 33
	mov dl, dh
	int 33

	mov ah,76
	int 33


end