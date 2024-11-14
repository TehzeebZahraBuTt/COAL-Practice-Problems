include irvine32.inc
.data
i sbyte -128
j sbyte -10

.code
main proc

mov al,i
mov bl,j
add al,bl

movsx  eax,al
call writeint



exit
main endp
end main