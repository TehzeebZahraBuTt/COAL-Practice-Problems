include irvine32.inc
.data
inputmsg byte "Enter number to find factorial",0
fact dword ?
.code

Factorial PROC uses eax
mov ecx,eax   ;eax=5 ecx=5 5,4,3,2,1
mov eax,1
factloop:

mul ecx

loop factloop
call writedec

RET 
Factorial ENDP
main proc

 mov edx,offset inputmsg
 call writestring
 call readdec
 mov fact,eax

 call Factorial
 ;call writedec
exit
main endp
end main