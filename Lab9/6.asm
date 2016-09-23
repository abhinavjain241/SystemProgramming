.model small


.code


main proc

	mov ah, 1
	int 33

	mov ah, 10
	call ddiv
	push cx
	mov al, cl
	call ddiv
	push cx
	mov al, cl
	call ddiv
	push cx

	mov ah, 2

	call pp
	call pp
	call pp

	mov ah, 76
	int 33

main endp

pp proc
	pop cx
	pop dx
	push cx
	mov dl, dh
	add dl, '0'
	int 33
	ret
pp endp

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
end