.model small

.code
	xor cx, cx
	xor dx,dx

	mov ah, 1
	int 33

	mov cl, al
	int 33
	
	mov ah, 0
redo:
	add dx, ax
	loop redo

	xchg dh, dl
	mov ah, 2
	int 33
	mov dl, dh
	int 33

	mov ah, 76
	int 33

end