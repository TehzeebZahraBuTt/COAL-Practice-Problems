INCLUDE IRVINE32.INC

.DATA
a dword 2000
b word 10


qout byte "Qoutient value is : ",0

rem byte "Reminder value is : ",0
.CODE
MAIN PROC

mov bx,b


mov esi,offset a
mov dx,[esi+2]
mov ax,[esi]

div bx     ;dx:ax/bx =>   a/b   => 2000/10   ax=q dx=r

mov bx,ax
mov cx,dx



mov edx,offset qout
call writestring

movzx eax,bx
call writedec
call crlf


mov edx,offset rem
call writestring

movzx eax,cx
call writedec
call crlf




EXIT
MAIN ENDP
END MAIN