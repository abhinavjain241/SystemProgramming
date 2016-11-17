.model small


.data
a dd 12345678h
b dd 12345678h
.code
	mov ax, @data
	mov ds, ax

	mov ax, a
	mov dx, a+2

	add b, ax
	adc b+2, dx


	not a+2
	not a
	add a, 1
	adc a+2, 0

	

	mov ah, 76
	int 33
end
