INCLUDE Irvine32.inc     ; Include the Irvine32 library
.data
 
array byte 'a','b','c','d',0
arr2 byte ?,?,?,?,?
  

.code
main PROC

mov esi,offset array
mov edi,offset arr2
mov ebx,0
mov ecx,4
l1:

movzx edx,byte ptr [esi+ebx*1]
mov [edi+ebx*1],edx


cmp ebx,4
inc ebx

loop l1

mov ebx,0
mov ecx,4
l2:

mov eax,[edi+ebx*1]
call writechar
call crlf
cmp ebx,4
inc ebx
loop l2

    exit
main ENDP

END main