title pg1:case
extrn conv:near
.model small
.stack 100h
.data
	msg db 'Enter lower case: $'

.code
main proc

	mov ax, @data
	mov ds, ax
	mov ah, 9
	lea dx, msg
	int 21h

	mov ah, 1
	int 21h

	call conv

	mov ah, 76
	int 33

main endp

end main