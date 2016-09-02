.model small

.data

a db 10 dup(0)



.code
	mov ax, @data
	mov ds, ax
	

	mov ah,1 
	mov cx, 10
	lea si, a
l1:
	int 33
	mov [si], al
	inc si
	loop l1

	mov cx, 10
	lea si, a
	mov ah, 2

l2:
	mov dl, [si]
	cmp dl, 'A'
	jl e1
	cmp dl, 'Z'
	jg e1
	int 33
e1:	
	inc si
	loop l2


	mov ah, 76
	int 33
end