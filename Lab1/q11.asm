.model small
.code
	mov AH, 1

	int 33
	mov BL, AL

	mov CL, 100
	mov DH, 110

	SUB CL,BL

	mov DL, 'A'
	adc DL, 0

	SUB DH, BL
	adc DL, 0

	mov AH, 2
	int 33
	mov AH, 76
	int 33
end