.model small
.code
	mov AH, 1
	int 33
	mov BH, AL
	int 33
	ADD BH, AL
	SUB BH, '0'
	SUB BH, 10
	
	mov AH, 2

	mov DL, '1'
	int 33
	mov DL, BH
	int 33

	mov AH, 76
	int 33
end