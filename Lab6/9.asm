.model small


.code

	mov ah, 1
	int 33

	sub al, 80
	mov bl, al

	mov ax, 1000
	idiv bl

	cbw
	mov bl, 50

	idiv bl

	add ah, 75
	mov dl, ah
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end