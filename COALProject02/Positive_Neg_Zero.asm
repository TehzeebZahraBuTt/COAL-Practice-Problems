include irvine32.inc

.data

i byte ?
inputmsg byte "please enter a number",0

Positive byte "Number is +ve  ",0
Negative byte "Number is -ve ",0
Zero byte "Number is 0",0


.code
main proc
;compare is actually doing subtraction sourse-destination
;jumpz work on status flag res

mov edx,offset inputmsg
call writestring

call readint                                 ;eax has my input
cmp eax,0                                 ;eax-100 true=0    otherwise any other number
jg POsitiveLabel                          ; if no==100 then jump to label   =>kssi line ko name dy dea ha =>  agr true hwa  (cmp=0) then is line pa ay ga
jl NegativeLabel
jz ZeroLabel

jmp codeEnd

POsitiveLabel:
mov edx,offset Positive
call writestring
call crlf
jmp codeEnd

NegativeLabel:
mov edx,offset Negative
call writestring
call crlf
jmp codeEnd


ZeroLabel:
mov edx,offset Zero
call writestring
call crlf
jmp codeEnd


codeEnd:
exit
main endp
end main