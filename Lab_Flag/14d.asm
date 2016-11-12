.model small

.code

	mov ah, 1
	int 33
	mov cl, 3

	shr al, 1
	pushf
	shr al, cl

	stc
	rcl al, 1
	stc
	rcl al, 1
	clc
	rcl al, 1
	popf
	rcl al, 1

	mov dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33
end