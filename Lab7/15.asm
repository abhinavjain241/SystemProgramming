.model small

.data

a db 80 dup(0FFH)



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a
	mov [si], byte ptr 0DFH
redo:
	int 33
	cmp al, 'Z'
	je e1
	cmp al, ' '
	jne next
	
	mov [si+1], byte ptr 0DFH
next:
	and [si], al
	inc si
	jmp redo

e1:
	mov [si], byte ptr '$'
	mov ah, 9
	lea dx, a
	int 33
	
	mov ah, 76
	int 33
end