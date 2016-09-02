.model small

.code

	mov ah,1
	int 33

	mov ah, 0
	sub al, 80
	
	mov bl, 100
	
	imul bl

	mov bx, 256
	cwd
	idiv bx

	mov bx, ax
	add bx, 75
	add dl, 75

	mov ah, 2
	int 33

	mov dx, bx
	int 33
	
	
	mov ah, 76
	int 33

end