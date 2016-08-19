.model small

.code
	mov ah, 1
	int 33
	xor ah, ah
	xor cx, cx
	mov dx, 2000
redo:
	cmp dx, ax
	jl exit
	sub dx, ax
	inc cx
	jmp redo
exit:
	mov dl, cl
	mov ah, 2
	int 33
	mov ah, 76
	int 33
end