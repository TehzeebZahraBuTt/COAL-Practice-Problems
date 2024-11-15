include irvine32.inc
.data
fact dword ?

msg1 byte "enter num to find factorial",0
.code

Factrorial proc
push ebp
mov ebp,esp
mov ecx,[ebp+8]
mov eax , 1
fact_loop:

mul ecx

loop fact_loop

pop ebx
ret
factorial endp
main proc


mov edx,offset msg1
call writestring
call readdec
mov fact ,eax

push offset fact
call factorial



exit
main endp
end main