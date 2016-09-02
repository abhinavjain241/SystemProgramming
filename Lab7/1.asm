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

	mov cx, 5
	lea si, a
	mov ah, 2

l2:
	mov dl, [si]
	int 33
	add si, 2
	loop l2

	mov ah, 76
	int 33
end