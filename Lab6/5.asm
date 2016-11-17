.model small


.code

	mov ah, 1
	int 33
	sub al, 80
	mov ah, 0
	mov bl, 13
	mul bl

	add ax, 75

	mov ah, 2
	mov dl, al
	int 33

	mov ah, 76
	int 33

end