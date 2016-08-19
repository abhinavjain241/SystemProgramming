.model small

.code
	xor dl, dl
	mov ah, 1
	int 33
	and al, 0FH

loop1:
	cmp al, 0
	je next1
	dec al
	add dl, 4
	jmp loop1

next1:
	int 33
	and al, 0FH

loop2:
	cmp al, 0
	je next2
	dec al
	add dl, 6
	jmp loop2

next2:

	int 33
	and al, 0FH

loop3:
	cmp al, 0
	je next3
	dec al
	add dl, 2
	jmp loop3

next3:

	int 33
	and al, 0FH

loop4:
	cmp al, 0
	je next4
	dec al
	add dl, 3
	jmp loop4

next4:
	int 33
	and al, 0FH

loop5:
	cmp al, 0
	je next5
	dec al
	add dl, 1
	jmp loop5

next5:

	cmp dl, 7
	jl exit
	sub dl, 7
	jmp next5

exit:
	add dl, '0'
	mov ah, 2
	int 33
	mov ah, 76
	int 33

end