.model small

.code
	
	mov ah, 1
	int 33
	mov dx, 20000
	mov ah, 0
l1:
	sub dx, ax
	cmp dx, ax
	jge l1
	mov ah, 2
	int 33

	mov ah, 76
	int 33
	
end
