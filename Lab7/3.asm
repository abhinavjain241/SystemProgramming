.model small

.data

a db 11 dup('$')


.code
	mov ax, @data
	mov ds, ax
	
	mov ah,1 
	mov cx, 10
	lea si, a
l1:
	int 33
	or al, 20H
	mov [si], al
	inc si
	loop l1

	mov ah, 9
	lea dx, a
	int 33

	mov ah, 76
	int 33
end