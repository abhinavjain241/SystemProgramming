.model small

.code


	mov ah, 1
	int 33
	mov bl, al
	int 33

	mov ah, 2
	mov dl, 'B'

	add al,150
	pushf
	pop cx

	add bl, 150
	pushf
	pop bx

	and cx, bx
	sar cl, 1
	jnc skip

	dec dl

skip:
	int 33

	mov ah, 76
	int 33


end