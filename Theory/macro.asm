title pg1:macro
.model small


movw macro w1, w2
	push w2
	push w1
	pop w2
	pop w1
	endm

.stack 100h
.data
a dw 48, 49
b dw 50
.code
	main proc

		mov ax, @data
		mov ds, ax
		mov ah, 2
		movw dx, a
		int 33
		movw a+2, b
		mov dx, a+2
		int 33
		mov ah, 76
		int 33

	main endp
	
end