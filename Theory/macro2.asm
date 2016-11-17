.model small

get_big macro w1, w2
	local e1
	mov ax, w1
	mov ax, w2

	jg e1
	mov ax, w2
	e1:
	endm
.code	

	mov bx, 4
	mov cx, 3
	mov dx, 5
	get_big bx, cx
	get_big cx, dx
	
	mov ah, 76
	int 33

end