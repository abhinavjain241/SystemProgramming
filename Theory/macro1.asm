.model small

movw macro w1, w2
	push w2
	pop w1
	endm

.stack 100H
.data

	A dw 1,2
	B dw 3


.code
	mov ax, @data
	mov ds, ax
	
	movw A, DX
	movw A+2, B
	
	mov ah, 4ch
	int 33
	

end