include irvine32.inc
.data
notemsg byte "enter you amount",0
note dword ?
puchasemsg byte "enter amount of purchase",0
purchase dword ?
change dword ?
errormsgvar byte "your purchase cannot be greaater then your amount",0

.code
changeFunc proc
push ebp
mov ebp,esp
mov eax,[ebp+12]   ;note amount
mov ebx,[ebp+8]    ;purchase

sub eax,ebx
mov change,eax
;call writedec
pop ebp
ret
changeFunc endp

main proc
mov edx ,offset notemsg
call writestring
call readdec
mov note,eax

mov edx,offset puchasemsg
call writestring
call readdec
mov purchase,eax

cmp eax,note
jle callproc
jg errormsg

callproc:
push note  ;[ebp+12]
push purchase ;[ebp+8]
call changeFunc

mov eax,change
call writedec
jmp codeend

errormsg:
mov edx,offset errormsgvar
call writestring
jmp codeend

codeend:
exit
main endp
end main