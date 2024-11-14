include irvine32.inc
.data

num1 word -1000
num2 word 2
result dword ?

.code
main proc


mov ax,num1
mov bx,num2
imul bx


mov esi,offset result
mov [esi],word ptr ax
mov [esi+2],word ptr dx
mov eax,[esi]
call writeint


exit
main endp
end main