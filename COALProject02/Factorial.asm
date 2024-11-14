include irvine32.inc

.data
inputmsg byte "Please Enter a Number",0
num word ?

outputmsg byte "Factorial of your number is : ",0


.code
main proc

mov edx,offset inputmsg
call writestring
call crlf

call readdec
     ;eax=5   ----5*4*3*2*1
     cmp eax,0
     jz ZerosFactorial   ;handling for factorial of 0 is 1

mov ecx ,eax   ;ecx=5

loop1:

    dec ecx         ;ecx=4
    cmp ecx,0
    jz codeEnd
    mul ecx        

   

cmp ecx,0   ;5-0=5
jz codeEnd
jmp loop1

ZerosFactorial:
mov eax,1
call writedec
exit


codeEnd:
mov edx,offset outputmsg
call writestring
 call writedec
 call crlf

exit
main endp
end main