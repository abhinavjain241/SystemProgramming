.model small

.data

arr dw 10H,20H,40H,50H,60H,?

.code

	mov ax, @data
	mov ds, ax
	mov es, ax

	std
	lea si, arr+8
	lea di, arr+10

	mov cx, 3

	rep movsw
	mov word ptr [di], 30H

	mov ah, 76
	int 33
end