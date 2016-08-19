

; PRINT THE NUMBER PRESENT IN AX

OUTDEC PROC
; input: AX; number to be displayed
; output: void

    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    OR AX, AX ;COMPARE AX WITH 0
    JGE E1
    PUSH AX
    MOV DL, '-'
    MOV AH, 2
    INT 21H

    POP AX
    NEG AX

E1:
    XOR CX, CX
    MOV BX, 10
R1:
    XOR DX, DX
    DIV BX
    PUSH DX
    INC CX
    OR AX, AX
    JNE R1
    MOV AH, 2

P1:
    POP DX 
    OR DL, 30H
    INT 21H
    LOOP P1
    POP DX
    POP CX
    POP BX
    POP AX


    RET
OUTDEC ENDP
