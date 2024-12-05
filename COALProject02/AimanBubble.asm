include irvine32.inc

.data

arr word 15,10,7,39,12,11,19,3,6,16
bef_sort byte 'values before sorting are: ',0
aft_sort byte 'values after sorting are: ',0

.code
main proc
mov ecx,10 
mov esi,offset arr
mov ebx,0
mov edx, offset bef_sort
call writestring
call crlf

display_bef:
mov ax,[esi+ebx*2]
movzx eax,ax
call writedec
call crlf
inc ebx
loop display_bef

mov ecx,9
bubble_out:
mov ebx,0
bubble_inner:
mov ax,[esi+ebx*2]
mov dx,[esi+2+ebx*2]
cmp ax,dx
jg swap
jle no_swap
swap:
mov [esi+ebx*2],dx
mov [esi+2+ebx*2],ax
no_swap:
inc ebx
cmp ebx,ecx
je next_alt
jmp bubble_inner
next_alt:
loop bubble_out

mov ecx,10 
mov esi,offset arr
mov ebx,0
mov edx, offset aft_sort
call writestring
call crlf

display_aft:
mov ax,[esi+ebx*2]
movzx eax,ax
call writedec
call crlf
inc ebx
loop display_aft

exit
main endp
end main
