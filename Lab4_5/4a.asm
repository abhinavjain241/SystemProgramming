.model small
.code
	xor ch, ch
	xor cl, cl

	mov ah, 1
	int 33
	mov bl, al
	int 33

	mov ah, 0

redo:
	cmp bl, al
	ja exit
	add cl, bl
	adc ch, 0
	inc bl
	jmp redo
exit:
	mov ah, 2
	mov dl, ch
	int 33

	mov ah, 76
	int 33

end