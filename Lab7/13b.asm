.model small

.data

a db 80 dup('$')



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a
	lea bx, a
	mov cx, 0

redo:
	int 33
	cmp al, 'Z'
	je e1
	cmp al, ' '
	jne next
	cmp cx, 0
	jg skip
	mov bx, si
	inc cx
skip:
	mov al, '$'
next:
	mov [si], al
	inc si
	jmp redo

e1:
	mov ah, 9
	mov dx, bx
	inc dx
	int 33
	
	mov ah, 76
	int 33
end