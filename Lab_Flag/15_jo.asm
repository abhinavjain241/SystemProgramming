.model small

.code
	mov ah, 2
	mov dl, 'A'
	mov bh, 128

	l:
	int 33
	add bh, 256-4
	add bh, 5
	jo l

	mov ah, 76
	int 33

end