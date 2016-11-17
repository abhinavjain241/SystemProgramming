.model small

.data




.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 76
	int 33
end