.model small

.data

a db 5 dup(?)

.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	mov cx, 5
	lea si, a
l1:
	int 33
	mov [si], al
	inc si
	loop l1

	mov ah, 2
	mov bx, 5
l2:
	mov cx, bx
	mov si, 5
	sub si, bx
	jcxz e1

l3:
	mov dl, a[si]
	int 33
	inc si
	loop l3
	
	dec bx
	jmp l2

e1:	
	mov ah, 76
	int 33
end