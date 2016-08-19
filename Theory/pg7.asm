.model small

.stack 100H

.code 
main proc
	call indec
	call outdec
	mov ah, 76
	int 33
main endp	
include indec.asm
include outdec.asm
end