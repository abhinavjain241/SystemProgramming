.model small

.data

a db 20 dup('$')

.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	mov cx, 10
	lea si, a+9
l1:
	int 33
	mov [si], al
	dec si
	loop l1

	lea dx, a
	mov ah, 9
	int 33

e1:	
	mov ah, 76
	int 33
end