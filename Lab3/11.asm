.model small

.code 
	mov ah, 1
	int 33

redo:
	cmp al, 7
	jl exit
	sub al, 7	
	jmp redo

exit:
	mov dl, al
	add dl, '0'
	mov ah, 2
	int 33
	mov ah, 76
	int 33
end