.model small

.code

main proc
	xor dl, dl
	mov bh, 1

	mov ah, 1
	
r:
	cmp bh, 5
	jg ee1

	int 33
	call tonum
	mov bl, al
	call func
	add dl, cl
	inc bh
	jmp r
ee1:
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