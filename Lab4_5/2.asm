.model small
.code
	xor dx,dx
	mov cx, 10
	mov ah, 1

redo:
	int 33
	add dl, al
	adc dh, 0 
	loop redo
	
d:
	cmp dx, 10
	jl exit
	sub dx, 10
	inc ch
	jmp d

exit:
	mov dl, ch
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end
