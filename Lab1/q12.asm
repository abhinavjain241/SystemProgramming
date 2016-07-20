.model small
.code
	mov AH, 1

	int 33
	mov BL, AL

	int 33

	mov AH, 100
	mov BH, 100
	mov CH, 'A'

	SUB AH, AL
	adc CH, 0

	SUB BH, BL
	adc CH, 0

	mov DL, CH

	mov AH, 2
	int 33
	mov AH, 76
	int 33
end