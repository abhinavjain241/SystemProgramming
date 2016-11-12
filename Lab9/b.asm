.model small

.code

main proc
	mov al, 6
	call f

	mov ah, 2
	int 33

	mov ah, 76
	int 33
main endp

f proc
	cmp al, 3
	jg l1
	mov dl, 1
	ret
l1:
	push ax
	sub al, 1
	call f
	pop ax
	mov bl, dl
	push ax
	push bx
	sub al, 2
	call f
	pop bx
	pop ax
	add bl, dl
	sub al, 3
	push bx
	call f
	pop bx
	add dl, bl
	ret
f endp
end main