include irvine32.inc

.data

i byte ?
inputmsg byte "please enter a number",0

Hundredmsg byte "Number is 100  ",0
NotHundredmsg byte "Number is not 100  ",0


.code
main proc
;compare is actually doing subtraction sourse-destination
;jumpz work on status flag res

mov edx,offset inputmsg
call writestring

call readint                                 ;eax has my input
cmp eax,100                                 ;eax-100 true=0    otherwise any other number
jz labelnois100                            ; if no==100 then jump to label   =>kssi line ko name dy dea ha =>  agr true hwa  (cmp=0) then is line pa ay ga
;ELSE BLOCK
mov edx,offset NotHundredmsg
call writestring
call crlf


;unconditional jump

jmp codeEnd
;IF BLOCK 
labelnois100:

mov edx,offset Hundredmsg
call writestring

codeEnd:
exit
main endp
end main