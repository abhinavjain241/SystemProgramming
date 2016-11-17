.model small

.data

a db 'Give'
  db ' letter:$'
c db ' next:$'

.code
	mov ax, @data
	mov ds, ax
	
	lea dx, a
	mov ah, 9
	int 33
	mov ah, 1
	int 33
	mov bl, al
	add bl, 1
	mov ah, 9
	lea dx, c
	int 33
	mov dl, bl
	mov ah, 2
	int 21h

	mov ah, 76
	int 33
end