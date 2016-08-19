.model small
.code
	xor cx, cx
	xor bx, bx

	mov ah, 1
	int 33

	mov bl, al
	int 33

	mov ah, 0
	
redo:
	cmp bl, al
	ja exit
	add cx, bx
	inc bl
	jmp redo
exit:
	mov ah, 2
	mov dl, ch
	int 33

	mov ah, 76
	int 33

end