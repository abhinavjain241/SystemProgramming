.model small

.code

main proc
	
	mov ah, 1
	int 33
	call tonum

	mov bh, al
	int 33
	call tonum
	mov bl, al
	call func
	mov ch, cl

	int 33
	call tonum
	mov bl, al
	int 33
	call tonum
	mov bh, al
	call func

	mov dl, cl
	add dl, ch
	mov ah,2
	int 33

	mov ah, 76
	int 33


main endp

tonum proc
	and al, 0fh
	ret
tonum endp

func proc
	; input bl, bh
	; output will in cl
	xor cl, cl
	push bx
redo:
	cmp bl, 0
	jle e1
	add cl, bh
	dec bl
	jmp redo

e1:
	pop bx
	ret

func endp

end