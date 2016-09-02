.model small

.code

	mov ah,1
	int 33
	sub al, 80
	cbw

	mov dx, ax
	mov ax, 0

	mov bx, 10000
	idiv bx

	add ax, 75
	mov dx, ax
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end