INCLUDE IRVINE32.INC
.data

valarr dword 4,5,1,0
.code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; uses ecx, edi
; input args: esi address array
; return eax sumarr
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sumarr PROC uses ecx edx ebx
mov ecx, lengthof valarr
mov edx, 0
mov eax,0
l1:
mov ebx, [esi+edx*type valarr]
add eax, ebx
inc edx
cmp edx,ecx
je exit1
jmp l1

exit1:
ret
sumarr endp
MAIN PROC


mov esi, offset valarr
call sumarr 
call writeint
	EXIT
	MAIN ENDP
END MAIN