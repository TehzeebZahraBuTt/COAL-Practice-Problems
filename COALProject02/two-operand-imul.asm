include irvine32.inc
.data

num1 sword -10
num2 sword 2
res sdword ?

.code
main proc

mov ax,num1
mov bx,num2
imul ax,bx   ;dx:ax=ax*bx
;dx:ax

;movsx eax,ax
;call writeint


mov esi,offset res
movsx eax,ax
mov [esi],eax
mov eax,[esi]

call writeint


exit
main endp
end main