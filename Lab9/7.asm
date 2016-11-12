.model small

.data
crlf db 0dh, 0ah,'$'

.code

main proc
	mov ax, @data
	mov ds, ax

	xor bx,bx
	or cx, 0FFFFh

	mov ah, 1
	mov dh, 1
rr:
	cmp dh, 5
	jg ee
	int 33

	cmp al, bl
	jb e1
	cmp al, bh
	ja c1
	mov bl, al
	jmp e1
c1:
	mov bl, bh
	mov bh, al
e1:


	cmp al, cl
	ja e2
	cmp al, ch
	jb c2
	mov cl, al
	jmp e2
c2:
	mov cl, ch
	mov ch, al
e2:

	inc dh
	jmp rr
ee:

	mov al, bh
	call ascii
	mov al, bl
	call ascii
	mov al, ch
	call ascii
	mov al, cl
	call ascii



	mov ah, 76
	int 33


main endp

newline proc
	push ax
	push dx
	
	mov ah, 9
	lea dx, crlf
	int 33

	pop dx
	pop ax

	ret
newline endp

ascii proc
	;input al -ascii chracter
	;outut nothing
	push ax
	push cx

	mov ah, 10
	call ddiv
	push cx
	mov al, cl
	call ddiv
	push cx
	mov al, cl
	call ddiv
	push cx

	mov ah, 2

	call pp
	call pp
	call pp
	call newline

	pop cx
	pop ax
	ret

ascii endp

pp proc
	pop cx
	pop dx
	push cx
	mov dl, dh
	add dl, '0'
	int 33
	ret
pp endp

ddiv proc
	;input al/ah
	;output cl, ch
	xor cx,cx
	push ax

r:
	cmp al, ah
	jl ee1

	inc cl
	sub al, ah
	jmp r

ee1:
	mov ch, al

	pop ax
	ret
ddiv endp
end