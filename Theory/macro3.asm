.model small
save_regs macro r1, r2, r3
	push r1
	push r2
	push r3
	endm

restore_regs macro r1, r2, r3
	pop r1
	pop r2
	pop r3
	endm
copy macro so, des, len
	save_regs cx, si, di
	lea si, so
	lea di, des
	cld
	mov cx, len
	rep movsb
	restore_regs di, si, cx
	endm

.data
a db 'hello$'
b db 'dunno'
.code
	
	mov ax, @data
	mov ds, ax
	mov es, ax

	copy a, b, 6
	
	mov ah, 9
	lea dx, b
	int 33

	mov ah, 76
	int 33

end