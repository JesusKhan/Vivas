data segment
num db 01h,02h,03h,04h,05h,06h,07h,08h,09h,0Ah
count db 09h
sum db ?
data ends
code segment
start:
assume cs:code,ds:data
mov ax,data
mov ds,ax
mov cl,count
mov si,offset num
mov bl,[si]
inc si
again:
add bl,[si]
inc si
dec cx
jnz again
mov sum,bl
mov ah,4ch
int 21h
code ends
end start