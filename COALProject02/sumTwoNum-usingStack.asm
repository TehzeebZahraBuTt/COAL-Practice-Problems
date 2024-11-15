include irvine32.inc
.data
msg byte "just msg",0
.code

AddTwo PROC
 push ebp
 mov ebp,esp
 mov eax,[ebp+12]
 add eax,[ebp+8]
 ;call writedec
 pop ebp
 ret
 AddTwo ENDP
main proc


push 5
push 6
call addTwo
call writedec
exit
main endp
end main