include irvine32.inc
.data
message byte "Hello world ! ",0
.code
main proc

mov edx,offset message
call writestring

exit
main endp
end main