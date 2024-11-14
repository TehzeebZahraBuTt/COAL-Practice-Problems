include irvine32.inc

.data
msg_char BYTE 'PLesae enterr your name',0

.code
main proc


mov edx,offset msg_char
call writestring
call crlf
call readchar   ;al main move hoga
call writechar
call crlf
movzx eax,al
call writechar

exit
main endp
end main