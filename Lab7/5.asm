.model small

.data

a db 11 dup('$')


.code
	mov ax, @data
	mov ds, ax
	
	mov ah,1 
	mov cx, 9
	lea si, a
l1:
	int 33
	mov [si], al
	inc si
	loop l1

	lea si, a
	int 33
	mov ah, 0
	and al, 0fh
	dec al
	add si, ax

	mov dl, [si]
	mov ah, 2
	int 33

	mov ah, 76
	int 33
end