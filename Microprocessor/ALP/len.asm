.model small
.stack 100h
.data
str1 db "hellooooo$"
len db 0
.code
mov ax , @data ; initializing data segment
mov ds , ax
mov si , offset str1
up:
mov al , [si]
cmp al , '$'
jz dn ; if destination == source then zf = 1
inc len
inc si
loop up
dn:
; printing length
mov dl , len
add dl , 48
mov ah , 2
int 21h
mov ah , 4ch ; service routine for exit
int 21h
end