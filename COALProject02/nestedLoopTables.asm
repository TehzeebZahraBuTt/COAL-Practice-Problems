include irvine32.inc
.data
inputmsg  byte "Enter number for table ",0
outputmsg byte "Table of : ",0
x byte " X ",0
equality byte " = ",0

.code
main proc


mov ecx,10    ;outer loop counter 
 mov esi ,1         ;for incrementing
OUTER_LOOP:

push ecx
mov edx,offset outputmsg
call writestring


   mov ebx,1          ;for printing table from 1-10 not 10-1 ---=ebx n*ebx=ans but using ecx just to itrate
 mov ecx,10 
   mov eax,esi
call writedec
call crlf
   INNER_LOOP:

      mov eax,esi     ;eax main wo value save kr rahy hain jis ka table print krna ha-- for reusing it
      ;-------
    
      call writedec
      mov edx,offset x
      call writestring
      mov eax,ebx
      call writedec
       mov edx,offset equality
      call writestring
      mov eax,esi
      ;--------
       mul ebx        ;jis ka table print krna ha* 1-10 e.g  2*1=2
       call writedec
       call crlf
       inc ebx

      

   LOOP INNER_LOOP
   inc esi
   pop ecx


LOOP OUTER_LOOP

exit
main endp
end main