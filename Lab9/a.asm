.model small

.code 
xyz proc
	mov dl, 0

	l2:
	cmp bl, cl
	jg l1
	add dl, bl
	add bl, 1
	jmp l2

l1:
	ret
xyz endp

main proc

	mov bh, 5
	mov ch, 7
	mov dh, 13
	mov bl, bh
	mov cl, ch

	call xyz
	mov al, dl
	mov bl, ch
	mov cl, dh
	call xyz

	sub dl, al
	mov ah, 2
	int 33

	mov ah, 76
	int 33
main endp
end main
