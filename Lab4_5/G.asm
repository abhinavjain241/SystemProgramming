.model small

.data 
a dw 25650,51
b db 48,49,36

.code
	mov ax, @data
	mov ds, ax
	lea dx, a
	mov ah, 9
	int 21h

	mov ah, 76
	int 33
end