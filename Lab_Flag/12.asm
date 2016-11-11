.model small
.code
	mov ah, 1
	int 33
	
	add al, 166

	cld
	pushf
	pop dx

	mov cl, 3
	shr dx, cl

	mov dh, dl
	and dh, 00010000b
	shr dh, 1
	and dl, 11101111b
	or dl, dh

	mov ah, 2
	int 33
	
	mov ah, 76
	int 33
end