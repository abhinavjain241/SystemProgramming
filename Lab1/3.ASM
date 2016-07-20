.model small
.code
	mov AH, 2
	mov AL, 68
	mov DL, 103
	mov CL, 57
	int 21h
	mov DL,CL
	int 21h
	mov DL, AL
	int 21h
	mov AH, 76
	int 21h
end

