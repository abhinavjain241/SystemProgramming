.model small

.code

mov ah, 1
int 33
mov bl, al
add bl, 70
int 33
add al, 10
mov ah, 2
mov dl, 'A'
cmp bl, al

jo t
js s

inc dl
jmp s

t:
inc dl
js s
dec dl

s:
int 33

mov ah, 76
int 33
end
