include irvine32.inc
.data

arr dword 0Ah,0Bh,0Ch,0Dh
arr2 dword ?,?,?,?
.code
main proc

mov esi,offset arr
mov edi,offset arr2

mov ecx,lengthof arr
mov ebx,0
mov eax,3

loop1:

mov edx,[esi+ebx*4]
mov [edi+eax*4],edx
inc ebx
dec eax

loop loop1

mov ecx,lengthof arr2

mov edi,offset arr2
mov esi,offset arr
mov ebx,0
loop2:
mov eax,[edi+ebx*4]
mov [esi+ebx*4],eax

inc ebx
loop loop2

mov esi,offset arr
mov ecx,lengthof arr
mov ebx,0
display:

mov eax,[esi+ebx*4]
call writehex
call crlf
inc ebx

loop display

exit
main endp
end main