.model small

.data

a db 20 dup('$')

.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	mov cx, 5
	lea si, a
l1:
	int 33
	mov [si], al
	int 33
	inc si
	loop l1

	lea dx, a
	mov ah, 9
	int 33

e1:	
	mov ah, 76
	int 33
end