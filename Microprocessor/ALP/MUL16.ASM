
data segment
a dw 0010h
b dw 0018h
c dd ?
data ends
 
code segment
assume ds:data, cs:code
start:
mov ax,data
mov ds,ax
mov ax,a
mov bx,b
mul bx
mov word ptr c,ax
mov word ptr c+2,dx
int 3
code ends
end start