.model small


.code


	mov ah, 1
	int 33
	sub al, 80
	cbw

	mov bl, 100
	imul bl


	mov bx, ax

	mov dx, 0FFFEH
	mov ax, 07960H

	idiv bx

	add ax, 75
	mov dx, ax 
	mov ah, 2
	int 33

	mov ah,76
	int 33
	
end