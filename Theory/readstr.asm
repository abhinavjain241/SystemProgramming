read_str proc
	; input DI = offset of the string
	; output DI = starting address of the string
	; BX = number of chars
	push ax
	push dx
	push di

	cld
	xor bx, bx
	mov ah, 1
	int 33
read_l1:
	cmp al, 0dh
	je read_e1
	cmp al, 08h
	jne read_e2
	
	or bx,bx
	jz read_r1

	mov ah, 2
	mov dl, ' '
	int 33
	mov dl, 08h
	int 33
	mov ah,1

	dec di
	dec bx

	jmp read_r1

read_e2:
	stosb
	inc bx
read_r1:
	int 33
	jmp read_l1
read_e1:
	pop di
	pop dx
	pop ax
	ret
read_str endp
