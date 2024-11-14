INCLUDE Irvine32.inc     ; Include the Irvine32 library
.data
  inputmsg byte "Enter number to print table",0
   i dword ?
  

.code
main PROC
	mov edx,offset inputmsg
	call writestring
	call crlf
	call readdec
	mov i,eax
	;eax
	mov bx,1
loop1:
	mov eax,i
	mul bx
	call writedec
	call crlf
	inc bx
	cmp bx,11
	ja endCode
	jb loop1




endCode:
    exit
main ENDP

END main