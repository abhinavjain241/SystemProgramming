public conv

d_seg segment 
	msg db 'In Upper case: $'
	char db -20h, '$'
d_seg ends

c_seg segment
	assume cs: c_seg
	assume ds: d_seg
	
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