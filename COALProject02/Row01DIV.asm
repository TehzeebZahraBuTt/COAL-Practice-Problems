include irvine32.inc

.data
a word 2000
b byte 100


qout byte "Qoutient value is : ",0

rem byte "Reminder value is : ",0
.code

main proc

mov ch,b   ;options bh,bl,ch,cl--
mov ax,a

div ch   ;a/b   q=al   ,r=ah


mov bl,al    ;qout
mov cl,ah    ;rem

mov edx,offset qout
call writestring

movzx eax,bl
call writedec
call crlf

mov edx,offset rem
call writestring

movzx eax,cl
call writedec
call crlf


exit
main endp
end main