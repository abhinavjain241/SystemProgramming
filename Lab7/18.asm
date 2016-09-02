.model small

.data

a db '1th letter=  '
db '2th letter=  '
db '3th letter=  '
db '4th letter=  '
db '5th letter= $'



.code
	mov ax, @data
	mov ds, ax
	
	mov ah, 1
	lea si, a+11
	mov cx, 5
redo:
	int 33

	mov [si], al
	add si, 13
	loop redo

e1:
	mov ah, 9
	lea dx, a
	int 33
	
	mov ah, 76
	int 33
end