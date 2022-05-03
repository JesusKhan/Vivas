;expression - (a+b)(a+c+d)/(a+b+c+d)

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
mov al, a
mov bl, b
add al, bl
mov si,1200h
mov [si],al
mov al,a
add al,c
add al,d
inc si
mov [si],al
mov al,a
add al,b
add al,c
add al,d
mov cl,al
xor ax,ax
mov al,[si]
mov bl,[si-1]
mul bl
mov bl,cl
div bl
int 21h
end