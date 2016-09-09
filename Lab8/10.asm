.model small


.code

	.model small


.code

	mov ah, 1
	int 33
	mov dl, al
	mov dh, 0

	ror dl, 1
	ror dx, 1
	ror dx, 1
	ror dx, 1
	ror dx, 1
	ror dx, 1
	ror dx, 1
	ror dx, 1
	
	mov dl, dh

	mov ah, 2
	int 33

	mov ah, 76
	int 33

end



end