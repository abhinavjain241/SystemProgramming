.model small

.code
	mov ah, 2
	mov dl, 'A'
	mov bh, 251

	l:
	int 33
	add bh, 1
	jnc l

	mov ah, 76
	int 33

end