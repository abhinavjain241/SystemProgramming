.model small


.code
	
	mov ah, 1
	int 33
	mov bl, al
	int 33

	and al, 0fh
	and bl, 0fh
	
	mul bl
	mov dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end