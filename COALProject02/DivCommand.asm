include irvine32.inc

.data

a word 10
b word 20
res dword 00

.code
main proc
  

  mov ax , b
  mov bx , a
  xor dx,dx
  div bx  ;q=ax,rem=dx
  
  
mov esi,offset res
mov [esi],word ptr ax
mov [esi+2],word ptr dx

mov eax,[esi]
call writedec
call crlf
mov eax,[esi+2]
call writedec

  

exit
main endp
end main