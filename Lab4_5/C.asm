.model small
.code

	mov cl, 240
	mov ch, 100
	add cl, 20
	mov dl, 'n'
	jnc l1
	mov dl, 'c'
l1:
	mov ah, 2
	int 33
	mov dl, ch
	int 33

	mov ah, 76
	int 33

end