.model small

.data

a db 10 dup('$')



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	int 33
	and al, 0fh

	mov cl, al
	mov ch, 0
	mov bx, cx

	lea si, a

l1:
	int 33
	mov [si], al
	inc si
	loop l1

	dec si
	mov cx, bx
	mov ah, 2

l2:
	mov dl, [si]
	int 33
	dec si
	loop l2

	mov ah, 76
	int 33
end