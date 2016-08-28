.model small

.code

	mov ax, 2000
	mov bx, 150
	mul bx
	mov cx, ax
	mov ah, 2
	int 33
	mov dl, ch
	int 33
	mov dl, cl
	int 33

	mov ah, 76
	int 33
end