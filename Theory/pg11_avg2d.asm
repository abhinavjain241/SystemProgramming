.model small
.stack 100h

.data

five dw 5
score dw 67,45,98,33
	  dw 70,56,87,44
	  dw 82,72,89,40
	  dw 80,67,95,50
	  dw 78,76,92,60
avg dw 4 dup(0)
.code
main proc
	mov ax, @data
	mov ds, ax
	mov si, 6
r1:
	mov cx, 5
	xor bx, bx
	xor ax, ax

f1:
	add ax, score[bx+si]
	add bx, 8
	loop f1
	xor dx, dx
	div five
	mov avg[si], ax
	sub si, 2
	jnl r1

	mov ah, 2
	mov dl, avg
	int 33
	
	mov dl, avg+2
	int 33
	
	mov dl, avg+4
	int 33
	
	mov dl, avg+6
	int 33


	mov ah, 76
	int 33
main endp
end
