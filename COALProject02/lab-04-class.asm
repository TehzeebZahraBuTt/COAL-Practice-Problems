include irvine32.inc

.data

i byte ?
inputmsg byte "please enter a number",0

outputmsg byte "Number you enter is : ",0
.code
main proc

mov edx,offset inputmsg
call writestring

call readint   ;eax main chala jay ga input  =>always put data in eax

mov esi,offset i

mov [esi],eax    ;input is written at is location
call crlf

mov edx,offset outputmsg
call writestring
movzx eax,i
call writedec

exit
main endp
end main