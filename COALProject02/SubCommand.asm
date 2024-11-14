include irvine32.inc

.data

a dword 90
b dword 100


.code
main proc

mov eax,a   ;eax=90
mov ebx,b   ;ebx=100
sub eax,ebx   ;90-100 



call writeint



exit
main endp
end main