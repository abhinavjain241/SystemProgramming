extrn conv:far
s_seg segment stack
	db 100 dup(0)
s_seg ends

d_seg segment 
	msg db 'Enter Lower case: $'
d_seg ends

c_seg segment
	assume cs: c_seg
	assume ds: d_seg
	assume ss: s_seg

main proc
	mov ax, d_seg
	mov ds, ax
	mov ah, 9
	lea dx, msg

	mov ah, 76
	int 33

main endp 
end