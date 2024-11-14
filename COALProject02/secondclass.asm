include irvine32.inc
.data
a word 20
b word 90
res dword 00

.code
main proc


mov ax,a
mov bx,b
mul bx   ; dx:ax= ax*bx

mov esi,offset res
mov [esi],word ptr ax
mov [esi+2],word ptr dx

mov eax,[esi]
call writedec



exit

main endp
end main