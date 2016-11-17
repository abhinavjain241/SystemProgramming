.model small

; TODO do this without compare
.code

	mov ah, 1
	int 33

	sub al, 80
	mov bl, 122
	mov ah, 0
	imul bl
	mov dx, 0
	cmp ax, 0
	jge pass
	mov dx, 0FFFFH
pass:
	mov bx, 500
	idiv bx

	add ax, 75
	mov dl, al
	mov ah,2
	int 33

	mov ah,76
	int 33


end