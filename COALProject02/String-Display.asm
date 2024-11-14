include irvine32.inc

.data
msg BYTE 'PLesae enterr your name',0
user_name BYTE ?
.code
main proc



mov edx,offset msg
mov edx,offset user_name
mov ecx,20
call readstring

mov edx,offset user_name
call writestring

exit
main endp
end main