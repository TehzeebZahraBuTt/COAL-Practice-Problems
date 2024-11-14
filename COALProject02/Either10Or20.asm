include irvine32.inc

.data

i byte ?
inputmsg byte "please enter a number",0

Tenmsg byte "Number is 10  ",0
NotTenmsg byte "Number is not 10 not 20 ",0
Twentymsg byte "Number is 20",0


.code
main proc
;compare is actually doing subtraction sourse-destination
;jumpz work on status flag res

mov edx,offset inputmsg
call writestring

call readint                                 ;eax has my input
cmp eax,10                                 ;eax-100 true=0    otherwise any other number
jz labelnois10                            ; if no==100 then jump to label   =>kssi line ko name dy dea ha =>  agr true hwa  (cmp=0) then is line pa ay ga
cmp eax,20
jz labelnois20

;ELSE BLOCK
mov edx,offset NotTenmsg
call writestring
call crlf


;unconditional jump

jmp codeEnd
;IF BLOCK 
labelnois10:

mov edx,offset Tenmsg
call writestring
call crlf 
jmp codeEnd
labelnois20:
mov edx,offset Twentymsg
call writestring

codeEnd:
exit
main endp
end main