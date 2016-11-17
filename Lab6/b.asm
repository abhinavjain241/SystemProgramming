.model small

.code

        mov ax, 5497
        mov bl, 100
        div bl
        mov dl, al
        mov dh, ah
        mov ah, 2
        int 21h
        mov dl, dh
        int 33
        mov ah, 76
        int 33


end
