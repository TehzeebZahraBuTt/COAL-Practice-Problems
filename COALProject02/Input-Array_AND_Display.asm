include irvine32.inc
.data

msg byte "Enter 5 values of array ",0

values byte "Values you have entered are ",0
arr2 dword ?,?,?,?,?

.code
main proc


mov edx,offset msg
call writestring
mov ecx,0
mov ebx,offset arr2
loop1:
call readdec
mov [ebx+ecx*4],eax
inc ecx
cmp ecx,5
jz DisplayArray
jmp loop1


DisplayArray:
mov edx,offset values
call writestring
call crlf
mov ecx ,0
mov ebx,offset arr2

	loop2:
	mov eax,[ebx+ecx*4]
	call writedec
	call crlf
	inc ecx
	cmp ecx,5
	jz codeEnd
	jmp loop2

codeEnd:
exit
main endp
end main