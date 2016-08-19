.model small
.data

msg db 'This is a message$'

.code
	
main proc
	mov ax, @data
	mov ds, ax
	xor si, si
	mov cx, 17
l1: 
	cmp msg[si], 9
	je n1
	and msg[si], 0dfh
n1:
	inc si
	loop l1

	lea dx, msg
	mov ah, 9
	int 33

	mov ah, 76
	int 33
main endp
include outdec.asm
end