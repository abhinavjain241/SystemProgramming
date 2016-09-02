; read and disp

.model small

.stack 100H

.data
str1 db 80 dup(0)
crlf db 0dh, 0ah, '$'

.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

	lea di, str1
	call read_str


	lea si, str1
	call disp_str

	mov ah, 76
	int 33
main endp
include readstr.asm
include dispstr.asm

end main



