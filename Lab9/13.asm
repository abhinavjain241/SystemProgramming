.model small


.code

	mov bl, 67
	mov bh, 72

	mov ah,2
	call xyz

	mov ah, 76
	int 33

xyz proc
	
	cmp bl, bh
	jg e
	mov dl, bl
	int 33
	inc bl
	call xyz 
e:
	ret
xyz endp

end