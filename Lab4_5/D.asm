.model small

.code
	
	mov ah, 1
	int 33
	mov ah, 0
	mov cx, 0
	mov bl, 100
l1:
	add cx, ax
	sub bl, 1
	cmp bl, 0
	jg l1
	mov ah, 2
	mov dl, ch
	int 33
	mov dl, cl
	int 33

	mov ah, 76
	int 33
end