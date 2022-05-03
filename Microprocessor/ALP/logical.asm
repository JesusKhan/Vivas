.model small
.stack
.data
a db 01h
b db 02h
c db 03h
d db 04h
.code
mov ax, @data
mov ds, ax
xor ax, ax
mov al, c
mov bl, d
add al, bl
mov si, 1200h
mov [si], al
mov al, b
mov bl, a
sub al, bl
inc si
mov [si], al
mov al, b
add al, c
add al, d
mov cl, al
xor ax, ax
mov al, [si]
mov bl, [si-1]
mul bl
mov bl, cl
div bl
int 21h
end
