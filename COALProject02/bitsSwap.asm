include irvine32.inc
.data

a dword 19685630h   ;esi=5630      esi+2=1968
before byte "Before swaping ",0
after byte "After swaping ",0

.code
main proc


;-------WRITING STRING
mov ebx,offset before
mov edx,ebx
call writeString
call crlf



;---JUST WRITING NUMBER
mov eax,a     
call writehex
call crlf
mov esi, offset a
mov dx, word ptr [esi+2]      ;dx=1968
mov ax, word ptr [esi]        ;ax=5630

;---------SWAPPING HERE

mov [esi],word ptr dx       ;dx=1968
mov [esi+2],word ptr ax     ;ax=5630

movzx eax,ax                  ;first printing ax=5630
call writehex

call crlf

movzx eax,dx                   ;second printing dx=1968          
call writehex
call crlf

;------just string 
mov edx,offset after
call writeString
call crlf



call crlf
     
mov eax,dword ptr[esi]     
call writehex
call crlf
mov dx, word ptr [esi]        ;dx=1968
mov ax, word ptr[esi+2]      ;ax=5630

movzx eax,ax               
call writehex               ;5630
call crlf
movzx eax,dx               
call writehex                ;1968






exit
main endp
end main