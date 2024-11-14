include irvine32.inc
.data

i byte 20   ;8bits

j word 30303 ;16bits
j1 word 20
res word 0
k dword 40  ;32bits

text byte "abcd",0  ;8bits
text2 byte "string2",0

num word 1234h
.code

main proc

mov al,i
movzx eax,al
call writedec
call crlf

mov ax,j
movzx eax,ax
call writedec
call crlf


mov eax,k
call writedec
call crlf

mov edx,offset text
call writestring
call crlf

mov esi , offset text
mov al,[esi]
call writechar
call crlf

mov bl,[esi+1]
mov al,bl
call writechar

call crlf

mov bl,[esi+2]
mov al,bl
call writechar
call crlf

;swaapppp

mov al,[esi]
mov bl,[esi+1]
mov cl,[esi+2]
mov [esi],cl
mov [esi+2],al

mov edx,offset text
call writestring
call crlf



;addition
movzx eax,i
movzx ebx,j
add eax,ebx
call writedec
call crlf


;subtraction
movzx eax,j  
movzx ebx,j1
sub eax,ebx

call writedec
call crlf

;================
movzx eax,j   ;30
movzx ebx,j1  ;20
mul ebx
call writedec
call crlf

;===============
mov ax,j   ;30
mov bx,j1  ;20
mul bx     ;result in dx:ax  


mov esi , offset res
mov [esi],word ptr ax
mov [esi+2],word ptr dx
mov eax,[esi]
call writedec
call crlf
;======================

movzx eax,j   ;30
movzx ebx,j1  ;20
mul ebx     ;result in edx:eax  
call writedec
call crlf
;=====================


movzx eax,i   ;20 8bit
movzx ebx,j1  ;20  16bit
div  ebx

call writedec  ;qoutient
call crlf
mov eax,edx   ;reminder
call writedec
call crlf
;=================
mov esi,offset num   ;num=12 34  16 bit  esi+1=12  esi=34

mov al, byte ptr [esi]   ;al=34
mov bl,byte ptr [esi+1]  ;bl=12

mov [esi],bl
mov [esi+1],al

movzx eax,word ptr [esi]
call writehex
call crlf
;============

mov esi, offset num      ; Load the offset of num into ESI

mov al, byte ptr [esi]   ; AL = 34 (low byte)
mov bl, byte ptr [esi+1] ; BL = 12 (high byte)

mov [esi], bl            ; Store BL (12) into the first byte
mov [esi+1], al          ; Store AL (34) into the second byte

movzx eax, word ptr [esi]  ; Load the swapped word into EAX
call writehex             ; Print the swapped value



exit
main endp
end main