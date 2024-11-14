include irvine32.inc
.data

outermsg byte "*",0
innermsg byte "* * * * *",0

.code
main proc

mov ecx,5

OUTER:

 mov edx,offset outermsg
    call writestring
    call crlf
    push ecx

    mov ecx,5

   INNER:

    mov edx,offset innermsg
    call writestring
    call crlf

   LOOP INNER

   pop ecx

LOOP OUTER



exit
main endp
end main