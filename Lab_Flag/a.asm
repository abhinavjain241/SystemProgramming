.model small

.code

	mov cl, 12
	mov bh, 14
	mov ah, 2
	mov dl, 65
	add cl, bh
	jp l1
	add dl, 3
	l1:
	int 33
	mov ah, 76
	int 33

end