.model small

.code
	mov cl, 4
	mov ah, 1
	int 33

	mov bl, al
	int 33
	mov dl, 65

	add al, bl

	pushf
	pop ax
	shr ax, cl
	push ax
	popf

	jc l
	add dl, 1
	l:
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end