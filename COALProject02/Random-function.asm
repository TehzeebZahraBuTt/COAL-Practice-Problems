include irvine32.inc

.data

.code

main proc
mov ecx,10
call  randomize   ;to generate unique num every time we run program ,randomize main seed set krta ha current time ko 
                  ;
loopbody:
mov eax,100
call randomrange
cmp eax,50
jb loopbody

;call random32    ;put a random num in eax   seed

call writedec
call crlf

loop loopbody


exit
main endp
end main