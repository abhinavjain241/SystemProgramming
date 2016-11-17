.model small

.code



main proc
	
	mov ah, 1
	int 33

	mov dl, ' '
	call fact

	mov ah, 76
	int 33
main endp

fact proc
	mov bl, al
	mov cl, al
	mov ch, 0

f:	
	cmp cx, 2
	jb s

	mov al, bl
	mov ah, 0
	div cl
	
	cmp ah, 0
	jne sk


	mov ah, 0
	mov al, cl
	call outdec
	call space
sk:
	dec cx
	jmp f
s:
	ret
fact endp

space proc
	push ax
	push dx
	mov ah, 2
	mov dl, ' '
	int 33
	pop dx
	pop ax
	ret
space endp

include _outdec.asm
end