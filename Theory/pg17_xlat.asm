; xlat_enryption

.model small


.data

code_key db 65 dup(' '), 'XQPOGHZBCADEIJUVFMNKLRSTWY'
		 db 37 dup(' ')
decode_key db 65 dup(' '), 'JHIKLQEFMNTURSDCBVWXOPYAZG'
		db 37 dup(' ')
coded db 80 dup ('$')
prompt db 'Enter message: ', 0dh, 0ah, '$'
crlf db 0dh, 0ah, '$'

.code
main proc
	mov ax, @data
	mov ds, ax

	lea dx, prompt
	mov ah, 9
	int 33

	lea bx, code_key
	lea si, coded

	mov ah, 1
	int 33
l1:
	cmp al, 0dh
	je e1
	xlat

	mov [si], al
	inc si

	int 33
	jmp l1

e1:

	mov ah, 9
	lea dx, crlf
	int 33

	lea dx, coded
	int 33
	lea dx, crlf
	int 33

	lea bx, decode_key
	lea si, coded

	mov ah, 2

l2:
	mov al, [si]
	inc si

	cmp al, '$'
	je e2

	xlat
	mov dl, al
	int 33
	jmp l2

e2:

	mov ah, 76
	int 33

main endp
end main