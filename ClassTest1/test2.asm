.model small
.code

	mov bl, 75
	add bl, 52
	mov dl, 65
	mov ah, 2
	cmp bl, 2
	jge l5

	add dl, 5
	l5:
	int 33
	mov ah, 76
	int 33
end