.model small
.stack
.data
a db 09h
b db 07h
.code
mov ax,@data
mov ds, ax
mov al, a
mov si,1200h
mov [si], al
mov al,b
inc si
mov [si], al
xor ax, ax
mov al, [si]
mov bl, [si-1]
mul bl
int 21h
end