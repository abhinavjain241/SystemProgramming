.model small

.data

a db 20 dup ("$")


.code
	mov ax, @data
	mov ds, ax
	
	mov cx, 10
	mov ah, 1
	lea si, a
l1:
	int 33
	mov [si], al
	inc si
	loop l1


	lea dx, a+5
	mov ah, 9
	int 33

	mov ah, 76
	int 33
end