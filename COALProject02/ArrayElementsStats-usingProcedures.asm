include irvine32.inc
.data
arr dword ?,?,?,?,?
arr_elementsInput byte "Enter elements of array : ",0
additionMsg byte "Press + for addition",0

sumres dword ?
resultSum dword ?

.code
arrayStats PROC uses edx  ecx ebx esi eax

mov edx,offset additionMsg
call writestring
call crlf




;call readdec
call readchar
call writechar
;labels

cmp al,'+'
je perform_Addition




perform_Addition:
	;mov edx,offset arr
	mov eax,0
	mov ecx,lengthof arr
	mov ebx,0
		addd:

		add eax, [esi+ebx*type arr]
		inc ebx

		loop addd
	mov sumres,eax
jmp codeEnd


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

	mov [edx+ebx*type arr],eax
	inc ebx

	loop input_values
mov esi,offset arr
call arrayStats	
mov eax,sumres
call writedec

exit
main endp
end main