.model small

disp_char macro ch
	ifnb <ch>
		mov ah, 2
		mov dl, ch
		int 33
	else 
		err
	endif
endm

.code
	disp_char 'A'
	disp_char

	mov ah, 76
	int 33

end