.model small


.code
	mov ah, 1
	int 33

	mov dl, al

	rcr dl, 1
	
	rcr ah, 1
	rcr ah, 1

	rcr dl, 1
	rcr dl, 1
	rcr dl, 1
	rcr dl, 1
	rcr dl, 1
	rcr dl, 1
	rcr dl, 1
	rcr dl, 1

	mov ah, 2
	int 33

	mov ah, 76
	int 33

end