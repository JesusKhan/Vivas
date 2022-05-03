data segment
no1 db 02h
no2 db 03h
ans db ?
data ends
code segment
start : assume cs :code, ds :data
mov ax, data
mov ds, ax
mov al, no1
mov bl, no2
ADD al, bl
mov ah, 4ch
int 21h
code ends
end start