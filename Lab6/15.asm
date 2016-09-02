.model small

.code

	mov ah, 1
	int 33

	sub al, 80
	mov ah, al
	mov al, 0

	mov bx, ax

	mov dx, 1
	mov ax, 34464

	mov dx, 0FFFEH
	mov ax, 07960H

	idiv bx
	mov bx, ax
	mov ah, 2
	mov dx, bx
	add dl, 75
	int 33

	mov ah, 76
	int 33


end