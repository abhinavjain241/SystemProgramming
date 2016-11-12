.model small

.data

w1 dw 1
w2 dw 322

.code
main proc
	mov ax,@data
	mov ds, ax

	push w1
	push w2
	call addn

	mov ah, 76
	int 33
main endp


addn proc
	push bp
	mov bp, sp
	mov ax, [bp+6]
	add ax, [bp+4]
	pop bp

	ret 4
addn endp


end main