
INCLUDE IRVINE32.INC

.DATA
    
 ; msg byte "hello world",0
 i dword 10
 j dword 20
 t dword ?

.CODE
    MAIN PROC
       ;mov edx,offset msg
       ;call writestring
       mov eax,i
       call writedec
       call crlf

       mov eax,j
       call writedec
       call crlf


       mov eax,i
       mov t,eax
       mov eax,j
       mov i,eax
       mov eax,t
       mov j,eax

       mov eax,i
       call writeDec 
       call crlf

       mov eax,j
       call writeDec 
       call crlf



        EXIT
    MAIN ENDP

END MAIN