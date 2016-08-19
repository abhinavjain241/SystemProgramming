.model small
.data

arr dw 12 dup(0)
.code 
	main proc
		mov ax, @data
		mov ds, ax

		call input2d
		call output2d
		call max2d
		call outdec
		
		mov ah, 76
		int 33
	main endp

	input2d proc
		mov cx, 12
		mov si, 0
	redo:
		call indec
		mov arr[si], ax
		add si, 2
		loop redo
		ret	
	input2d endp

	output2d proc
		mov bx, 0

	start:
		mov si, 0
		mov cx, 3
	print:
		mov ax, arr[bx][si]
		call outdec
		mov ah, 2
		mov dl, 32
		int 33
		add si, 2
		loop print
		mov dl, 0dh
		int 33
		mov dl, 0ah
		int 33
		add bx, 6
		cmp bx, 24
		jl start

		ret

	output2d endp

	max2d proc
		mov cx, 11
		mov si, 2
		mov ax, arr
	re:
		cmp arr[si], ax
		jl skip
		mov ax, arr[si]
	skip:
		add si, 2
		loop re
		ret	
	max2d endp

	include indec.asm
	include outdec.asm
end