; Run this code using td.exe
.model small

.code
	mov al, 54
	mov bp, 2
	mov cx, cs:[bp]
	mov cs:byte ptr [bp], 0ABH
	mov ah, 76
	int 33
end