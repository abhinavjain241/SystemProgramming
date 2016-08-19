.model small

.code
	mov ah, 1
	int 33
	xor ah, ah
	xor ch, ch
	
	mov dh, 7
	mov dl, 208

redo:
	cmp dh, 0
	jne pass
	cmp dl, al
	jb exit ; Cannot use jl
pass:
	sub dl, al
	sbb dh, 0
	inc ch
	jmp redo
exit:
	mov dl, ch
	mov ah, 2
	int 33
	mov ah, 76
	int 33
end