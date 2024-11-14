include irvine32.inc
.data

arr1 word ?,?,?,?,?

inputmsg byte "Enter 5 values of array",0
searching byte " Enter value to search",0
searched byte " Your value is found on index : ",0

search word ?

.code
main proc

mov edx,offset inputmsg
call writestring

mov ecx,0
mov esi,offset arr1
loop1:


call readdec
mov [esi+2*ecx],eax

inc ecx
cmp ecx,5
jz searchVal
jmp loop1

searchVal:
 mov edx,offset searching
 call writestring
 call readdec
 ;-----searching value is in eax
 mov ecx,-1
 mov esi,offset arr1
 loop2:


 inc ecx
 movzx ebx,word ptr [esi+2*ecx]
 
 cmp eax,ebx
 
 jz foundMsg
 

cmp ecx,5
jz codeEnd
jnz loop2



 
 foundMsg:
 ;movzx eax,word ptr [esi+2*ecx]      ;founded value os at <-- this position
 ;call writedec
 mov edx,offset searched
 call writestring
 mov eax,ecx
 call writedec
 


 
codeEnd:

exit
main endp
end main