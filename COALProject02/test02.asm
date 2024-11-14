include irvine32.inc

.data

.code

main proc
mov ecx,20

loopbody:

mov eax,ecx
call writedec
call crlf

loop loopbody


exit
main endp
end main