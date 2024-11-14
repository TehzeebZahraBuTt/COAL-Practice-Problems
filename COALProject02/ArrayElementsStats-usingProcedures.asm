include irvine32.inc
.data
arr dword ?,?,?,?,?
arr_elementsInput byte "Enter elements of array : ",0
additionMsg byte "Press + for addition",0
subtractionMsg byte "Press - for subtraction",0
mulMsg byte "Press * for multiplication",0
maxMsg byte "Press > for finding maximum",0
minMsg byte "Press < for finding minimum",0
sumres dword ?
resultSum dword ?
resultSub dword ?
.code
arrayStats PROC

mov edx,offset additionMsg
call writestring
call crlf


mov edx,offset subtractionMsg
call writestring
call crlf


mov edx,offset mulMsg
call writestring
call crlf


mov edx,offset maxMsg
call writestring
call crlf


mov edx,offset minMsg
call writestring
call crlf

call readdec
;call readchar

;labels
cmp eax,'-'
jz perform_Subtraction
jnz codeEnd
cmp eax,1
jz perform_Addition
jnz codeEnd
cmp eax,'*'
jz perform_Multiplication
jnz codeEnd
cmp eax,'>'
jz perform_maxCalculation
jnz codeEnd
cmp eax,'<'
jz perform_minCalculation
jnz codeEnd



perform_Addition:
	mov edx,offset arr
	mov eax,0
	mov ecx,type arr
	mov ebx,0
		addd:

		add eax, [edx+ebx*type arr]
		inc ebx

		loop addd
	mov sumres,eax

perform_subtraction:


perform_multiplication:


perform_maxCalculation:


perform_minCalculation:

codeEnd:
RET
arrayStats endp
main proc

mov edx,offset arr_elementsInput
call writestring
mov ebx,0
mov ecx,lengthof arr
mov edx,offset arr
;input arrqay elements
	input_values:
	call readdec

	mov [edx+ebx*type arr],ax
	inc ebx

	loop input_values

call arrayStats	
mov eax,sumres
call writedec
exit
main endp
end main