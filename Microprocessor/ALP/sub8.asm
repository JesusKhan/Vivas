data segment
no1 db 09h
no2 db 05h
ans db ?
data ends
code segment
start : assume cs :code, ds :data
mov ax, data
mov ds, ax
mov al, no1
mov bl, no2
SUB al, bl
mov ah, 4ch
int 21h
code ends
end start