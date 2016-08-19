.model small
.code
	xor dh,dh
	xor dl, dl
	mov cl, 10
	mov ch, 0
	mov ah, 1

redo:
	int 33
	add dl, al
	adc dh, 0 
	loop redo
	
d:
	cmp dh, 0
	jne skip
	cmp dl, 10
	jb exit
skip:
	sub dl, 10
	sbb dh, 0
	inc ch
	jmp d

exit:
	mov dl, ch
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end
