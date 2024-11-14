INCLUDE Irvine32.inc

.data
    val1 byte 128
    val2 byte 128

.code
main PROC

mov al,val1
mov bl,val2
add al,bl
call writedec



    exit                    
main ENDP
END main
