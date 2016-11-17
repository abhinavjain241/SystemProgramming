.model small


.data
a db 100 dup(?)

.code

	mov ax, dgroup
	mov ds, ax
	mov si, 0
	mov ah, 1
l:
	int 33
	mov a[si], al
	inc si
	cmp si, 5
	jl l
	mov si, 0
	mov ah, 2
k:
	mov dl, a[si]
	int 33
	inc si
	cmp si, 5
	jl k

	mov ah, 76
	int 33

end