.model small


.code

main proc
	xor cl, cl
	mov ah, 1

	int 33
	and al, 0fh

	mov bl, 10
	mov bh, al
	call func

	mov dl, cl

	int 33
	and al, 0fh
	add dl, al

	mov ah, 2
	int 33

	mov ah,76
	int 33

main endp

func proc
	; input bl, bh
	; output will be added in cl
	;push ax
redo:
	cmp bl, 0
	jle e1
	add cl, bh
	dec bl
	jmp redo

e1:
	;pop ax
	ret

func endp

end