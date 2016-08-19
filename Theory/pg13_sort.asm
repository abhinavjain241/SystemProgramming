title pg1:sort
.model small
.stack 100h

.data

	a db 5,2,1,3,4

.code
	main proc
		mov ax, @data
		mov ds, ax

		lea si, a
		mov bl, a
		mov bh, 0
		call sort1
		
		mov ah, 4ch
		int 21h

	main endp

	sort1 proc
		; input SI= offset of array
		; BX=number of elements of array

		;output: SI

		push bx
		push cx

		push dx
		push si

		dec bx
		je end1
		mov dx, si

	s1:
		mov si, dx
		mov cx, bx
		mov di, si
		mov al, [di]
	f1:
		inc si
		cmp [si], al
		jng n1
		mov di, si
		mov al, [di]

	n1:
		loop f1
		call swap

		dec bx
		jne s1

	end1:
		pop si
		pop dx
		pop cx
		pop bx

		ret

	sort1 endp
	swap proc
		push ax
		mov al, [si]
		xchg al, [di]
		mov [si], al
		pop ax
		ret
	swap endp
end