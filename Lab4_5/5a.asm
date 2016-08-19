.model small

.code

	mov ah, 1
	int 33
	mov ch, al
	int 33
	mov cl, al

redo:
	cmp ch, 0
	jne skip
	cmp cl, 120
	jb exit
skip:
	sub cl, 120
	sbb ch, 0
	jmp redo
	
exit:
	mov dl, cl
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end