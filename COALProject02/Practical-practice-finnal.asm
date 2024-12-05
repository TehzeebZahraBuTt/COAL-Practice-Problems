include irvine32.inc
.data
num1 dword 12345678h
.code
main proc

mov esi,offset num1
mov eax,[esi]
call writehex

exit
main endp
end main