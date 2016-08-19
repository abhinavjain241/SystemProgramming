.model small

.data
dollar db 1AH
cent db 52H
value dd 1234ABH

.code
	mov ax, @data
	mov ds, ax

	mov ax, word ptr dollar

	mov ah, 76
	int 33
end