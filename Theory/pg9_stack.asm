.model small
.stack 100H

.data
t db 10
.code
	mov ax, @data
	mov ds ,ax

	mov ax, 3
	push ax
	inc ax
	push ax

	mov bp, sp
	mov bx, [bp]
	mov cx, [bp+2]

	mov bx, ds:[bp]
	mov cx, ds:[bp+2]

	lea bp, t
	mov bh, ds:[bp]

	mov ah,76
	int 33
end