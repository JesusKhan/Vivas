.model small
.data
a dw 2000h
b dw 3000h
c dw 0000h
d dw 0000h
.code
start: mov ax,@data
mov ds,ax
mov cx,0000h
mov ax,a
mov bx,b
add ax,bx
jnc skip
inc cx
skip: mov c,ax
mov d,cx
int 21h
end start
end code
