.model small


.data


a dw 1099, 50, 200, 400

.code

main proc
	mov ax, @data
	mov ds, ax

	
	mov ax, 4
	push ax

	call max
	call outdec

	mov ah, 76
	int 33
main endp

max proc
	push bp
	mov bp, sp
	cmp word ptr [bp+4], 1
	jg n
	mov ax, a[0]
	jmp e
n:	
	
	mov cx, [bp+4]
	dec cx
	push cx
	call max
	mov bx, [bp+4]
	shl bx, 1
	sub bx, 2
	cmp a[bx], ax
	jle e
	mov ax, a[bx]
e:
	pop bp
	ret 2

	ret
max endp

include outdec.asm

end