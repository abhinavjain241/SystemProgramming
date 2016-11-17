.model small

.data

a db 80 dup('$')



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a+60

redo:
	int 33
	cmp al, 'Z'
	je e1
	cmp al, ' '
	jne next
	mov al, '$'
next:
	mov [si], al
	dec si
	jmp redo

e1:
	mov ah, 9
	mov dx, si
	inc dx
	int 33
	
	mov ah, 76
	int 33
end