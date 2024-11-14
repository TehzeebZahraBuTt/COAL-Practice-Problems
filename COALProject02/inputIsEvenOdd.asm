include irvine32.inc
.data


input byte "Please Enter a number : ",0
evenmsg byte "Number is even ",0
Oddmsg byte "Number is Odd ",0


i word ?
j byte 2

.code
main proc


;----Taking input

mov edx,offset input
call writestring
call readint
call crlf

mov i,ax
mov bl,j 
div bl   ;ax/bl   20/2  q=al   r =ah


cmp ah,0
jz forEven
jnz forOdd
jmp codeEnd


forOdd:
mov edx,offset oddmsg
call writestring
jmp codeEnd

forEven:
mov edx,offset evenmsg
call writestring
jmp codeEnd

codeEnd:



exit
main endp
end main