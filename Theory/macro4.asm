.model small


dos_rtn macro
	mov ah, 4ch
	int 33
	endm

newline macro
	mov ah, 2
	mov dl, 0dh
	int 33
	mov dl, 0ah
	int 33
	endm

display_str macro str1
	lea dx, str1
	mov ah, 9
	int 33
	endm

disp macro str1	
	local msg, s1
	push ax
	push dx
	push ds
	jmp s1
	msg db str1, '$'

s1:
	mov ax, cs
	mov ds, ax
	mov ah, 9
	lea dx, msg
	int 33

	pop ds
	pop dx
	pop ax
	endm

exec macro fun, a, b
	fun a, b
	endm

.code
	exec add, ax, bx
	disp 'Hello World'
	mov ah, 76
	int 33
end