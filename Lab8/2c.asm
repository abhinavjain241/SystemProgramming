.model small


.code
	

	mov ah, 2
	rcl ah, 1
	rcl ah, 1

	rcl al, 1
	rcr dl, 1
	
	rcl al, 1
	rcr dl, 1
	
	rcl al, 1
	rcr dl, 1
	
	rcl al, 1
	rcr dl, 1
	
	rcl al, 1
	rcr dl, 1
	
	rcl al, 1
	rcr dl, 1
	
	stc
	rcr dl, 1
	rcr dl, 1
	
	mov ah,2
	int 33
	
	mov ah, 76
	int 33


end