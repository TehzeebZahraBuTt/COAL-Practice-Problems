include irvine32.inc
.data
inputmsg  byte "Enter number to find factorial ",0
outputmsg byte "Factorial of your number is : ",0

.code
main proc

mov edx,offset inputmsg
call writestring
call readdec
mov ecx,eax                                     ;ecx=5=5*4*3*2*1
mov eax,1
loop_start:

mul ecx                                          ;eax*ecx=> 1*5


loop loop_start                                  ;ecx=4


;PRINTING OUTPUT
mov edx,offset outputmsg
call writestring
call writedec

exit
main endp
end main