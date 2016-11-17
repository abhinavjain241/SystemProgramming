.model small

block macro n
	k=1
	rept n
		dw k
		k=k+1
	endm
endm

fact macro n
	m=1
	fa=1
	rept n
		dd fa
		m=m+1
		fa=fa*m
	endm
endm

.code
	a label word fact 4
start:
	lea si, a
	add a, 8
	mov ah, 76
	int 33
	;a: fact 4
	
end start