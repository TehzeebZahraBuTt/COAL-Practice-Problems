include irvine32.inc

.data
arr dword 10,20,30,40,50
s dword 5

.code
main proc

mov ecx,s
start_loop:

mov ebx,offset arr
mov eax,[ebx]
call writedec
add ebx,2

loop start_loop

exit
main endp
end main