disp_str proc
	; input si = offset of string to display
	; bx = number of char
	push ax
	push cx
	push dx
	push si

	mov ah, 2
	mov cx, bx
	cld
	jcxz disp_p1
disp_l1:
	lodsb
	mov dl, al
	int 33
	loop disp_l1
disp_p1:
	pop si
	pop dx
	pop cx
	pop ax
	ret
disp_str endp