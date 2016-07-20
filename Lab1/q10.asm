.model small
.code
	mov AH, 1
	int 33
	mov BL, AL

	mov DL, 100
	mov CH, 100

	SUB DL,BL

	mov DL, 0
	adc DL, 0

	add DL, DL
	add DL, 'Á'

	mov AH, 2
	int 33
	mov AH, 76
	int 33
end