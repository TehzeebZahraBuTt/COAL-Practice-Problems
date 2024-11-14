INCLUDE IRVINE32.INC

.DATA
a qword 200000
b dword 10


qout byte "Qoutient value is : ",0

rem byte "Reminder value is : ",0
.CODE
MAIN PROC

mov ebx,b


mov esi,offset a
mov edx,[esi+4]
mov eax,[esi]

div ebx     ;edx:eax/ebx =>   a/b   => 200000/10   eax=q    edx=r

mov ebx,eax
mov ecx,edx



mov edx,offset qout
call writestring

mov eax,ebx
call writedec
call crlf


mov edx,offset rem
call writestring

mov eax,ecx
call writedec
call crlf




EXIT
MAIN ENDP
END MAIN