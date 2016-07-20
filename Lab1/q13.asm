.model small
.code
	mov AH, 1

	int 33
	mov BL, AL

	int 33
	SUB BL, AL

	mov DL, 'A'
	adc DL, 0

	mov AH, 2
	int 33
	mov AH, 76
	int 33
end