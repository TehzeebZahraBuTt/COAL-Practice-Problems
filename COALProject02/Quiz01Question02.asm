include irvine32.inc

.data
age dword ?
party dword ?
inputmsg byte "PLease enter your age",0
incorrectage byte "Sorry ! You cannot cast vote ",0
castmsg byte "Choose 0 for Democrats and 1 for Republicans",0
Democratsmsg byte "you have casted vote for Democrats",0
Republicansmsg byte "you have casted vote for Republicans",0
.code
main proc
;input age from user if >18 vote kr skty hn 0,1  form part1 and 2 
mov edx,offset inputmsg
call writestring
call readdec

cmp eax,18
jge isOf18
jmp AgeNot18

isOf18:
mov edx ,offset castmsg
call writestring
call readdec    ;party in eax

		 mov party,eax
		 cmp party,0
		 jz Democrats
		 jnz Republicans

		 Democrats:
		 mov edx,offset Democratsmsg
		 call writestring
		 jmp codeEnd

		 Republicans:
		 mov edx,offset Republicansmsg
		 call writestring
		  jmp codeEnd

AgeNot18:
mov edx,offset incorrectage
call writestring
jmp codeEnd


codeEnd:
exit
main endp
end main