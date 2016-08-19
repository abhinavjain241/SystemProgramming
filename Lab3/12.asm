.model small

.code
	xor dl, dl
	mov ah, 1
	int 33

redo:
	
	cmp al, 2
	jl exit
	sub al, 2
	inc dl
	jmp redo 
exit:
	mov ah, 2
	int 33

	mov ah, 76
	int 33

end