.model small
.data

w dw 10,20,30,40,50,60,70,80,90,100

.code
	
main proc
	mov ax, @data
	mov ds, ax

	xor ax,ax
	mov cx, 10
	xor bx, bx
re:
	add ax, w[bx]
	add bx, 2
	loop re

	call outdec

	mov ah, 76
	int 33
main endp
include outdec.asm
end