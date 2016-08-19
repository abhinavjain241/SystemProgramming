.model small

.code
	xor bl, bl
	xor bh, bh
	xor ch, ch

	mov ah,1
	int 33

	mov cl, al
	int 33

redo:
	add bl, al
	adc bh, 0
	loop redo 

	mov ah, 2
	mov dl, bh
	int 33
	mov dl, bl
	int 33
	mov ah, 76
	int 33
end