.model small
.code
	mov AH, 1
	int 33
	mov BL, AL
	int 33
	SUB AL, BL

	ADD AL, '0'
	mov BL, AL

	mov DL, '-'
	mov AH, 2
	int 33
	mov DL, BL
	int 33

	mov AH, 76
	int 33
end