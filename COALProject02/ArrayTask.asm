
INCLUDE IRVINE32.INC

.DATA
    array DWORD 10,20,30,40   

.CODE
    MAIN PROC
   
    mov ebx,offset array
   

    mov eax,[ebx+4]
    call writedec
    call crlf
    
    mov eax,[ebx+12]
    call writedec
    call crlf 


        EXIT
    MAIN ENDP

END MAIN