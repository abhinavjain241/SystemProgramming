.model small

.code
	xor dx, dx

	call input
	call mul10

	call input
	call mul10

	call input
	call mul10

	call input
	call mul10

	call input

	xchg dl, dh
	mov ah,2
	int 33
	mov dl, dh
	int 33

	mov ah,76
	int 33	

	input proc
		mov ah,1
		int 33
		and al, 0fh
		add dl, al
		adc dh, 0
		ret
	input endp

	mul10 proc
		; input dx
		; output dx
		mov cx, 10
		xor bx, bx

	redo_add:
		add bx, dx
		loop redo_add

		mov dx, bx
		ret

	mul10 endp
end