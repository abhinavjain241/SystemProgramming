; count number of vowels and consonants

.model small

.data



.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

	jmp next
temp:
	d label byte
	vl db 'aeiou'
	cls db 'aeioupappi$'

	nop
	nop
	nop
next:
	mov ax, cs
	mov ds, ax
	lea dx, cls
	mov ah, 9
	int 33

	mov ah, 76
	int 33
main endp
include outdec.asm
end