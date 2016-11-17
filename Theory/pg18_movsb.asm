; movsb

.model small

.data
s1 db 'hello'
s2 db 5 dup(?)
	
.code

	mov ax, @data
	mov ds, ax
	mov es, ax

	lea si, s1
	lea di, s2
	mov cx, 5
	cld

	rep movsb

	mov ah, 76
	int 33


end