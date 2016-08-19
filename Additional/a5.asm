; print 5 a's using one int 
.model small

.code 
	mov ah, 2
	mov dl, 97
	mov cl, 1
intt:
	int 33
	cmp cl, 5
	je exit

	inc cl
	jmp intt
exit:
	mov ah, 76
	jmp intt

end