.model small

.code
	xor cl, cl
	mov ah,1 
	int 33
redo:
	cmp al, 10
	jl exit
	inc cl
	sub al, 10
	jmp redo
exit:
	add al, '0'
	add cl, '0'
	mov ah, 2
	mov dl, cl
	mov cl, al
	int 33
	mov dl, cl
	int 33
	mov ah, 76
	int 33
end