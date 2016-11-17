.model small

.data

a db 80 dup('$')



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a

redo:
	int 33
	cmp al, 'Z'
	je e1
	cmp al, ' '
	jne next
	mov bx, si
next:
	mov [si], al
	inc si
	jmp redo

e1:
	mov [bx], byte ptr '$'
	mov ah, 9
	lea dx, a
	int 33
	
	mov ah, 76
	int 33
end