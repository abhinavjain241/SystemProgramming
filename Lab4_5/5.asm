.model small

.code

	mov ah, 1
	int 33
	mov ch, al
	int 33
	mov cl, al

redo:
	cmp cx, 120
	jb exit
	sub cx, 120
	jmp redo
exit:
	mov dl, cl
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end