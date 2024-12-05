include irvine32.inc
.data

arr word 4 dup(?)
msg1 byte "enter values of array",0
msg2 byte " values of array",0
.code

main proc
mov edx,offset msg1
call writestring

mov ecx,lengthof arr
mov esi,0
mov edx,offset arr
loop1:
call readdec

mov [edx+esi*2],eax

inc esi

loop loop1

mov edx,offset msg2
call writestring

mov ecx,lengthof arr
mov edx,offset arr
mov esi,0
loop2:
mov eax,[edx+esi*2]
call writedec
call crlf
inc esi
loop loop2


exit
main endp
end main