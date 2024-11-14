include irvine32.inc
.data

num word 1234h  ;esi 34  esi+1 12



.code
main proc

mov esi , offset num
mov al,byte ptr [esi]     ;al=34
mov bl,byte ptr [esi+1]  ;bl=12


mov [esi],bl
mov [esi+1],al

mov ax,[esi]
movzx eax,ax
call writehex
exit
main endp
end main