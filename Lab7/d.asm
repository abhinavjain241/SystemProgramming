.model small

.data

a db 100 dup(?)


.code
	mov ax, @data
	mov ds, ax
	
	lea si, a
	mov cx, 5
	mov ah, 1
l1:
	int 33
	mov [si], al
	inc si
	loop l1

	mov cl, 36
	mov [si], cl
	mov ah, 9
	lea dx, a
	int 33


	mov ah, 76
	int 33
end