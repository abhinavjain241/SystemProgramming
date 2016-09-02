.model small

.data

a db 20 dup('$')

.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	mov cx, 9
	lea si, a
l1:
	int 33

	mov [si], al
	inc si
	loop l1

	int 33
	
	mov ah, 0
	and al, 0fh
	mov si, ax
	mov a[si],'$'

	lea dx, a
	mov ah, 9
	int 33

e1:	
	mov ah, 76
	int 33
end