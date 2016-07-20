.model small
.code
	mov AH, 1
	int 33
	mov BH, AL
	int 33
	mov BL, AL
	int 33
	mov CH, AL
	int 33
	mov DL, AL

	mov AH, 2
	int 33
	mov DL, CH
	int 33
	mov DL, BL
	int 33
	mov DL, BH
	int 33

	mov AH, 76
	int 33
end