.model small

.code


	mov ah, 1
	int 33
	mov bl, al
	int 33

	mov ah, 2
	mov dl, 'B'

	add al, 150
	jnc skip

	add bl, 150
	jnc skip

	dec dl

skip:
	int 33

	mov ah, 76
	int 33


end