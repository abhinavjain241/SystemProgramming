.model small
.code

k segment
assume cs:k
l1: mov ax, m
lea si, l2
mov cs:[si+3], ax
mov ah, 2
l2:
jmp far ptr l3
k ends

p segment 
assume cs:p
l3:
mov dl, 65
int 33
mov ah, 76
int 33
p ends

m segment
assume cs:m
l4:
mov dl, 66
int 33
mov ah, 76
int 33
m ends

end 