.model small

.code
	mov ah, 2
	mov dl, 'A'
	mov dh, 0

re:
	int 33	
	add dh, 256-4
	add dh, 5
	jc re

	mov ah, 76
	int 33
end
