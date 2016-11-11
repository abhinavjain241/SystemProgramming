.model small


.code
	mov dl, 'A'

	mov ah, 1
	int 33
	
	add al, 150
	pushf
	pop bx
	
	shl bx, 1
	shl bx, 1

	push bx
	popf

	jp skip
	inc dl
skip:
	mov ah, 2 
	int 33

	mov ah, 76
	int 33
end