.model small

.code

	mov ah, 1
	int 33
	mov cl, 2

	shr al, 1
	pushf
	shr al, 1
	pushf

	pop cx
	popf
	rcl al, 1
	
	push cx
	popf
	rcl al, 1

	mov dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33
end