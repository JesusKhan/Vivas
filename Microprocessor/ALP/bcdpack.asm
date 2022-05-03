.model small
.data 
a db 76
b dw ? 
.code
mov ax,@data
mov ds, ax
mov al, a 
and al, 0fh 
mov bl, al 
mov al,a 
mov cl, 04h
and al, 0f0h
ror al, cl
mov bh, al
mov b,bx
int 21h
mov ah,4ch
end