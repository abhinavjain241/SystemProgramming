; count number of vowels and consonants

.model small

.data

vl db 'aeiou'
co db 'bcdfghjklmnpqrstvwxyz'
out1 db 0dh, 0ah, 'Vowels=$'
out2 db 0dh, 0ah, 'Consonants=$'

vct dw 0
cct dw 0


.code
main proc
	mov ax, @data
	mov ds, ax
	mov es, ax

	cld
	mov ah,1
	int 33

l1:
	cmp al, 0dh
	je e3

	lea di, vl
	mov cx, 5
	repne scasb
	jne e1
	inc vct
	jmp e2
e1:
	lea di, co
	mov cx, 21
	repne scasb
	jne e2
	inc cct
e2:
	int 33
	jmp l1

e3:
	mov ah, 9
	lea dx, out1
	int 33
	mov ax, vct
	call outdec
	
	mov ah, 9
	lea dx, out2
	int 33
	mov ax, cct
	call outdec
	

	mov ah, 76
	int 33
main endp
include outdec.asm
end