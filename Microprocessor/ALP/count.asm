.model small
.data 
a db 25h 
c0 db 00h
c1 db 00h
.code
mov ax, @data
mov ds, ax
mov al,a 
mov cx, 0008h
again:	ROR al, 01h
	jnc over
	inc c1
	jmp next
over:	inc c0
next:	loop again
mov ah, 4ch
int 21h
end
