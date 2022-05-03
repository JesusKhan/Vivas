.MODEL SMALL 
.STACK 100H 
.DATA 
N DW 4
RES DW 0
.CODE
    MOV AX, @DATA
    MOV DS, AX
    MOV AX, N
    MOV CX, AX
    DEC CX
L1: MUL CX
    DEC CX 
    CMP CX, DX
    JNZ L1
    MOV RES, AX
    INT 21H
    ENDP
END