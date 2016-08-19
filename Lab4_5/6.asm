.model small

.code

	mov ah, 1
	int 33
	mov ch, al
	int 33
	mov cl, al

	mov dl, 2
redo:
	cmp dl, 0
	je exit
	
	mov bh, ch
	mov bl, cl

resub:
	cmp bh, 0
	jne skip
	cmp bl, dl
	je exit
	jb next
skip:
	sub bl, dl
	sbb bh, 0
	jmp resub

next:
	inc dl
	jmp redo
exit:
	
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end