INCLUDE IRVINE32.INC
.data
  inputmsg byte "Enter number to print table",0
   i dword ?

   mulSign byte " * ",0
   eqSign byte " = ",0
  

.code
main PROC
	
	mov i,5
	;eax
	mov bx,10
loop1:

	mov eax,i
    call writedec
	mov edx,offset mulSign
    call writestring
	movzx eax,bx
	call writedec
	mov edx,offset eqSign
    call writestring
	mov eax,i
	mul bx
	call writedec
	call crlf
	dec bx
	cmp bx,10
	ja endCode
	jb loop1




endCode:
    exit
main ENDP

END main

