include irvine32.inc
.data
num1 dword ?
num2 dword ?
inputmsg1 byte "Enter first number",0
inputmsg2 byte "Enter second number",0
.code
sumOf PROC

add eax,ebx
;call writedec
RET
sumOf endp
main proc

mov edx,offset inputmsg1
call writestring
call readint
mov num1,eax

mov edx,offset inputmsg2
call writestring
call readint
mov num2,eax

mov ebx,num1
call sumOf
call writedec
exit
main endp
end main