include irvine32.inc

.data
arr dword ?,?,?,?,?,?,?,?,?,?
msg byte "stored array is : ",0
.code
main proc

call randomize

mov ecx,10

mov ebx,0

mov esi,offset arr

loop1:
mov eax,1000
call randomrange
cmp eax,50
jb loop1

mov [esi+ebx*type arr],eax

call writedec
call crlf
inc ebx
loop loop1

mov esi,offset arr

mov ecx,10
mov ebx ,0
mov edx,offset msg
call writestring
loop2:

mov eax,[esi+ebx*type arr]
call writedec
call crlf
inc ebx
loop loop2


exit
main endp
end main