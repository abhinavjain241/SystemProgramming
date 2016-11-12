.model small


.code
	

	mov ah, 2
	
	mov dl, 0
	stc

	rcr dl, 1
	rcr dl, 1
	
	int 33
	
	mov ah, 76
	int 33


end