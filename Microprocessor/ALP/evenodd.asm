.model small
print macro msg
lea dx, msg
mov ah, 09h
int 21h
endm
data segment
num db 06h
str1 db 0dh, 0ah, 'Number is even',0dh,0ah,'$'
str2 db 0dh, 0ah, 'Number is odd',0dh,0ah,'$'
data ends
code segment
assume cs:code, ds:data
start: mov ax, data
mov ds, ax
mov al, num
rcr al, 01h
jc odd
print str1
jmp exit
odd: print str2
exit: mov ah, 4ch
int 21h
code ends
end start