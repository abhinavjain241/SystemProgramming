.model small

.data

a db 80 dup('$')



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a
	lea bx, a
redo:
	int 33
	cmp al, 'Z'
	je e1
	cmp al, ' '
	jne next
	mov bx, si
	inc bx
next:
	mov [si], al
	inc si
	jmp redo

e1:
	mov ah, 9
	mov dx, bx
	int 33
	
	mov ah, 76
	int 33
end