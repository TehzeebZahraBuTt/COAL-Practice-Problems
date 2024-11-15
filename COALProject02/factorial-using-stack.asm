include irvine32.inc
.data
fact dword ?

msg1 byte "enter num to find factorial",0
.code
;age uses ko use krain gy to jitny register uses use kry ga wo har aik alag location pa hoga
;AGR OFFSET KO stack pa push kia hwa ha to recieve kry wqt pehly address pop phir us address se value 

Factorial proc 
push ebp
mov ebp,esp

mov ecx,[ebp+8]
mov ecx,[ecx]
mov eax , 1
	fact_loop:

	mul ecx

	loop fact_loop
	call writedec
	;mov esp,ebp agr koi local variable bnaty 
	
pop ebp
ret
factorial endp
main proc


mov edx,offset msg1
call writestring
call readdec
mov fact ,eax

push offset fact
call factorial

call writedec

exit
main endp
end main