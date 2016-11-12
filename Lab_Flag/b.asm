.model small

.code
	
	mov bl, 100
	add bl, 120
	jmp g
	pushf
	pop ax
	or al, 01b
	push ax
	popf

	g:
	mov ah, 2
	jc t
	mov dl, 65
	jmp k
	t:
	mov dl, 66
	k:
	int 33

	mov ah, 76
	int 33

end