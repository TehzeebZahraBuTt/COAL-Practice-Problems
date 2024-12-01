include irvine32.inc
Student struct
   id dword ?
  ; name byte ?
   grade byte ?
   marks dword ?

Student ends
.data
std1 Student <123,'A',700>
std2 Student <>
msg1 byte "enter student id",0
.code
main proc

mov eax,std1.id
call writedec

mov al,std1.grade
call writechar

mov eax,std1.marks
call writedec

mov edx,offset msg1
call writestring
call crlf

call readdec
mov std2.id,eax

mov eax,std2.id
call writedec
exit
main endp
end main