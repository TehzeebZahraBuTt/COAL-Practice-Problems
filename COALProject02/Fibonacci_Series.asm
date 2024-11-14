include irvine32.inc
.data
var1 byte 0
var2 byte 1
spaceprint byte "  ",0

.code
main proc
;0+1+1+2+3+5+8
movzx eax,var1   ;0
call writedec
movzx ebx,var2   ;1
mov eax,ebx
mov edx,offset spaceprint
call writestring
call writedec
movzx eax,var1
mov ecx,20
mov edx,offset spaceprint
call writestring


comment $
n3=n1+n2;    
  System.out.print(" "+n3);    
  n1=n2;    
  n2=n3;   

$

loopstart:

add eax,ebx   ;0+1=1  -- 1+1=2    2+1=3   3+2
mov esi,eax 

call writedec 

mov eax,ebx
mov ebx,esi

mov edx,offset spaceprint
call writestring


loop loopstart
exit
main endp
end main