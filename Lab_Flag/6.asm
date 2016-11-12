.model small


.code
	mov dl, 'B'

	mov ah, 1
	int 33
	
	
	add al, 50
	jno skip
	sub dl, 1

skip:
	mov ah, 2 
	int 33


	mov ah, 76
	int 33
end