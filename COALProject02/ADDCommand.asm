include irvine32.inc
.data
a dword  10
b dword 20
.code
main proc

mov eax,a
mov ebx,b
add eax,ebx
call writedec 

exit
main endp
end main
