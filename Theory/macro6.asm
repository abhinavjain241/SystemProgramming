.model small

save_regs macro regs
	irp d, <regs>
		push d
	endm
endm

load_regs macro regs
	irp d, <regs>
		pop d
	endm
endm

convert_to_char macro byt
	local e1, e2
	cmp byt, 9
	jnle e1
	or byt, 30h
	jmp e2
e1:
	add byt, 55
e2:
endm

disp_chr macro byt
	push ax
	mov ah, 2
	mov dl, byt
	int 21h
	pop ax
endm

hexout macro w1
	save_regs<bx, cx, dx>
	mov bx, w1
	mov cl, 4
	rept 4
		mov dl, bh
		shr dl, cl
		convert_to_char dl
		disp_chr dl
		rol bx, cl
	endm
	load_regs<dx, cx, bx>
 endm

.code

	hexout 0abcdh

	mov dh, 2
	mov al, 'A'
	save_regs <ax, dx>
	load_regs <ax, dx>
	int 33
	mov ah, 76
	int 33

end