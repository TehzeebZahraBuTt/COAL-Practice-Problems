include irvine32.inc

.data
a dword 19685630h

.code
main proc


mov eax,a
call writehex

mov esi,offset a

mov ax,[esi]
mov dx,[esi+2]

mov [esi+2],ax
mov [esi],dx

mov eax,[esi]
call crlf
call writehex


exit
main endp
end main
