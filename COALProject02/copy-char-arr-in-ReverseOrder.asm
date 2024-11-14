INCLUDE Irvine32.inc     
.data

arr1 byte 'a','b','c','d',0  
arr2 byte 4 dup(?)          

.code
main PROC

    mov esi, offset arr1     
    mov edi, offset arr2    

    mov ecx, 4               
    mov ebx, 0               
    mov edx, 3               

copy_loop:
    mov al, [esi + ebx*1]      
    mov [edi + edx*1], al      

    inc ebx                  
    dec edx                  
    loop copy_loop           

    ; Display arr2
    mov ecx, 4               
    mov ebx, 0               
    mov edi, offset arr2     

print_loop:
    mov al, [edi + ebx*1]      
    call writechar          
    call crlf
    inc ebx                  
    loop print_loop          

    exit                     
main ENDP

END main
