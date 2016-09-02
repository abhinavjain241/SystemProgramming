.model small

.data

a db 20 dup('$')

.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	mov cx, 10
	lea si, a
l1:
	int 33
	cmp al, 'A'
	jl e2
	cmp al, 'Z'
	jg e2
	mov [si], al
	inc si
e2:
	loop l1

	lea dx, a
	mov ah, 9
	int 33

e1:	
	mov ah, 76
	int 33
end