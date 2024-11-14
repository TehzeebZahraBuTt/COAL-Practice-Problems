include irvine32.inc

.data
var1  dword 123
var2 dword 456

before byte "Before swapping",0
after byte "After swapping",0

.code
main proc

mov edx,offset before
mov eax,edx
call writeString
call crlf

;--PRINTING BEFORE SWAP
mov eax,var1
call writedec
call crlf
mov eax,var2
call writedec
call crlf


mov edx,offset after
mov eax,edx
call writeString
call crlf

;---SWAPPING HERE
mov eax,var1
mov ebx,var2
mov var1,ebx
mov var2,eax


mov eax,var1
call writedec
call crlf
mov eax,var2
call writedec
call crlf






exit
main endp

end main