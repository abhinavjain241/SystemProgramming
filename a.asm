.model small

.code


        mov bl, 250
        mov al, 244
        imul bl
        mov dh, ah
        mov ah, 2
        mov dl, al
        int 33
        mov dl, dh
        int 21h
        mov ah, 76
        int 33

end 
