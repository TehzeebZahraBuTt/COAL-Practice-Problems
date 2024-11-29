include irvine32.inc
.data
arr DWORD 23,44,55,48,28
RowSize=($-arr)
    DWORD 56,99,76,34,11
    DWORD 98, 34 ,45,98,56

.code
main proc
 rowindex=2
 columnindex=0

 mov ebx,offset arr
 add ebx,rowsize*rowindex
 mov esi,columnindex
 mov eax,0
 loop1:
 mov edx,[ebx+esi]
 
 add eax,edx
 add esi,4
 cmp esi,20
 jz showSum
 jnz loop1
 



 



 showSum:
 call writedec
exit
main endp
end main
