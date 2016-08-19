.model small

.code
	
	mov ah, 1
	int 33
	mov dx, 20000
l1:
	sub dl, al
	sbb dh, 0
	cmp dh, 0
	ja l1
	cmp dl, al
	jae l1
	mov ah, 2
	int 33
	


	mov ah, 76
	int 33
	
end
