public conv
.model small
.stack 100h
.data

msg db 0dh, 0ah, 'In Upper case '
char db -20h, '$'
.code
conv proc
	push bx
	push dx
	add char, al
	lea dx, msg
	mov ah, 9
	int 33
	pop dx
	pop bx
	ret
conv endp
end