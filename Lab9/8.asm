.model small

.data
crlf db 0dh, 0ah,'$'

.code

main proc
	mov ax, @data
	mov ds, ax

	mov ah, 1
	int 33

	mov ch, al
	call factor

	mov dl, cl
	mov ah, 2
	int 33

	mov ah, 76
	int 33


main endp

factor proc
	;input ch
	;output cl: smallest factor of ch
	push ax
	push cx

	mov ah, 1
	mov al, ch

redo:
	inc ah
	call ddiv
	cmp ch, 0
	jne redo

	
	pop cx
	mov cl, ah
	pop ax
	ret
factor endp

ddiv proc
	;input al/ah
	;output cl, ch
	xor cx,cx
	push ax

r:
	cmp al, ah
	jl ee1

	inc cl
	sub al, ah
	jmp r

ee1:
	mov ch, al

	pop ax
	ret
ddiv endp

newline proc
	push ax
	push dx
	
	mov ah, 9
	lea dx, crlf
	int 33

	pop dx
	pop ax

	ret
newline endp

end