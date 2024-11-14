include irvine32.inc

.data

arr1 word ?,?,?,?
arr2 dword ?,?,?,?
inputmsg byte "enter 4 values of array",0
outputmsg byte "Values in array 02 are : ",0
.code
main proc

mov edx , offset inputmsg
call writestring
call crlf

mov ebx,offset arr1
mov ecx,0


loop1:
call readdec
mov [ebx+ecx*2],eax
inc ecx
cmp ecx,4
jz CopyArray
jmp loop1

CopyArray:
  
  mov ebx,offset arr2
  mov esi,offset arr1

  mov ecx,0
  loop2:
  movzx edx,word ptr [esi+ecx*2]
  mov [ebx+ecx*4],edx
   inc ecx
  cmp ecx,4
  jz displayArray02
  jmp loop2

displayArray02: 
	mov edx , offset outputmsg
	call writestring
	call crlf

	mov ebx,offset arr2
	mov ecx,0
	loop3:
	mov eax,[ebx+ecx*4]
	call writedec
	call crlf
	inc ecx
	cmp ecx,4
	
	jz codeEnd
	jmp loop3

codeEnd: 
exit
main endp
end main