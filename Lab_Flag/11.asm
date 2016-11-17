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

	mov ah, 2
	int 33
	
	mov ah, 76
	int 33
end