.model small

.code

	mov ah, 1
	int 33

	mov ah, 0
	mov bl, 10

	div bl

	mov dl, ah
	add dl, '0'
	mov ah, 2
	int 33

	mov ah, 76
	int 33
	
end