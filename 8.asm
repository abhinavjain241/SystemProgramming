.model small

.code

	mov ah, 1
	int 33

	mov ah,0
	sub ax,80

	mov bx, 162
	imul bx
	mov bx, 500
	idiv bx

	add al, 75

	mov ah, 2
	mov dl, al
	int 33

	mov ah, 76
	int 33


end