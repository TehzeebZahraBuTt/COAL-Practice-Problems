include irvine32.inc

.data
a dword 1000
b dword 22220
.code
main proc

mov eax,a
mov ebx,b
mul ebx
call writedec


exit
main endp
end main