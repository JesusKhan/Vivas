.model small
.data
a dw 1251h
b dw 1425h
c dw ?
.code
mov ax, @data
mov ds, ax
mov ax, a
mov bx,b
add ax,bx
daa
mov c,ax
int 21h
mov ah,4ch
end