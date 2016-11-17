; pg16_xlat

.model small

.data
table1 db 30H, 31H, 32H, 33H, 35H, 36H, 37H


.code
	mov ax, @data
	mov ds, ax

		
	mov al, 3
	lea bx, table1
	xlat

	mov ah, 76
	int 33
end