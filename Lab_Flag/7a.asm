.model small
.code
	mov ah, 1
	int 33
	mov dl, 'A'
	add al, 27
	add al, 51
	js skip ; Wrong 
	add dl, 1
skip: 
	mov ah, 2
	int 33
	mov ah, 76
	int 33
end