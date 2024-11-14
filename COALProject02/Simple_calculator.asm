include irvine32.inc
.data
addmsg byte "select 1 for addition ",0
submsg byte "select 2 for subtraction ",0
mulmsg byte "select 3 for multiplication ",0
divmsg byte "select 4 for division ",0
exitmsg byte "Select 5 to exit", 0

Num1msg byte "Enter first number ",0
Num2msg byte "Enter second number ",0

addResMsg byte "Result of addition is :  ",0
subResMsg byte "Result of subtraction is :  ",0
mulResMsg byte "Result of multiplication is :  ",0
divResMsg byte "Result of division is :  ",0

num1 dword ?
num2 word ?

.code
main proc
;printing choices
repeatlab:
call crlf
	mov edx,offset addmsg
	call writestring
	call crlf

	mov edx,offset submsg
	call writestring
	call crlf

	mov edx,offset mulmsg
	call writestring
	call crlf

	mov edx,offset divmsg
	call writestring
	call crlf

	mov edx, offset exitmsg
    call writestring
    call crlf
;reading choice
call readdec


;checking conditions
cmp eax,1
jz addition
cmp eax,2
jz subtraction
cmp eax,3
jz multiplication
cmp eax,4
jz division
cmp eax,5
jz codeEnd
jnz repeatlab


;operation on conditions
addition:

	mov edx,offset Num1msg
	call writestring
	call crlf
	call readdec
	mov num1,eax

	mov edx,offset Num2msg
	call writestring
	call crlf
	call readdec
	mov num2,ax

	mov eax,num1
	movzx ebx,num2

	add eax,ebx
	mov edx,offset addResMsg
	call writestring
	call writeint
	jmp repeatlab

subtraction:

	mov edx,offset Num1msg
	call writestring
	call crlf
	call readdec
	mov num1,eax

	mov edx,offset Num2msg
	call writestring
	call crlf
	call readdec
	mov num2,ax

	mov eax,num1
	movzx ebx,num2

	sub eax,ebx
	mov edx,offset subResMsg
	call writestring
	call writeint
	jmp repeatlab

multiplication:

	mov edx,offset Num1msg
	call writestring
	call crlf
	call readdec
	mov num1,eax

	mov edx,offset Num2msg
	call writestring
	call crlf
	call readdec
	mov num2,ax

	mov eax,num1
	movzx ebx,num2

	mul ebx
	mov edx,offset mulResMsg
	call writestring
	call writeint
	jmp repeatlab

division:

	mov edx,offset Num1msg
	call writestring
	call crlf
	call readdec
	mov num1,eax

	mov edx,offset Num2msg
	call writestring
	call crlf
	call readdec
	mov edx,offset divResMsg
	call writestring
	mov num2,ax

	;mov eax,num1    ;upar wala no  dword
	mov cx,num2   ;neechy wala no word 

	mov esi,offset num1
	mov dx,[esi+2]
	mov ax,[esi]
	
	div cx     ;ax=q   dx=r
	movzx eax,ax
	call writeint
	jmp repeatlab





codeEnd:
exit
main endp
end main