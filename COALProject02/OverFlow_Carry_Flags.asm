include irvine32.inc

.data

i byte ?
inputmsg byte "please enter a signed number",0

overflow byte "Overflow occure  ",0
Negative byte "Number is -ve ",0
Zero byte "Number is 0",0


.code
main proc


mov edx,offset inputmsg
call writestring

call readint 
mov ebx,eax

mov edx,offset inputmsg
call writestring

call readint 
;ebx has 1st AND  eax has 2nd
add eax,ebx
jo OverFlowLabel
call writeint

jmp codeEnd

OverFlowLabel:
mov edx,offset overflow
call writestring
call crlf
jmp codeEnd




codeEnd:
exit
main endp
end main