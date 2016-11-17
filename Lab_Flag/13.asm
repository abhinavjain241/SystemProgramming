.model small

.code
	mov ah, 1
	int 33	

	mov ah, 2
	mov dl, 'B'

	cmp al, 50
	jc e
	cmp al, 100
	pushf
	pop cx
	xor cl, 1
	push cx
	popf
	jc e
	dec dl

	e:
	int 33

	mov ah, 76
	int 33
end
