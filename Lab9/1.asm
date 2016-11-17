.model small


.code

main proc
	xor cl, cl
	mov ah, 1
	mov bl, 1
	int 33
	mov bh, al
	and bh, 0fh
	call func

	mov bl, 3
	int 33
	mov bh, al
	and bh, 0fh
	call func

	mov bl, 5
	int 33
	mov bh, al
	and bh, 0fh
	call func

	mov bl, 4
	int 33
	mov bh, al
	and bh, 0fh
	call func

	mov dl, cl
	mov ah, 2
	int 33

	mov ah, 76
	int 33

main endp

func proc
	; input bl, bh
	; output will be added in cl
	push ax
redo:
	cmp bl, 0
	jle e1
	add cl, bh
	dec bl
	jmp redo

e1:
	pop ax
	ret

func endp

end