include irvine32.inc
.data

num1 sdword +10
num2 sdword +20


.code
main proc

mov eax,num1
mov ebx,num2
add eax,ebx

call writeint
exit
main endp
end main