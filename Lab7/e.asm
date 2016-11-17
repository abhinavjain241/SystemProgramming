.model small

.data
a db 69,70, 75
b dw 25665
  db 80,98,36

.code
	mov ax, @data
	mov ds, ax

	mov ah, 9
	lea dx, a
	int 33
	lea si, a
	mov ch, 71
	mov cl, 72

	mov [si+1], ch
	int 33
	mov [si+4], cx
	int 21h
	add dx, 3
	int 21h

	mov ah, 76
	int 33
end