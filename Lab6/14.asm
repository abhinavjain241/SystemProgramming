.model small

.code

	mov ah,1
	int 33

	mov ah, 0
	sub al, 80
	
	mov bl, 100
	
	imul bl
	mov dl, ah
	add dl, 75
	
	mov bl, al
	add bl, 75

	mov ah, 2
	int 33
	mov dl, bl
	int 33

	mov ah, 76
	int 33

end