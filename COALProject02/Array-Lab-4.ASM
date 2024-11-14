include irvine32.inc

.data
arr word 10,20,30,40


.code
main proc
mov esi , offset arr
mov ecx,0

loop1:

mov ax ,[esi+ecx*2]
movzx eax,ax
call writedec
call crlf
inc ecx
cmp ecx,4
jz codeEnd
jmp loop1

codeEnd:
exit
main endp
end main