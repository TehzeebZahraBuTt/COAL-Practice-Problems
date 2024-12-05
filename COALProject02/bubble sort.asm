INCLUDE Irvine32.inc 
.DATA  
    array dword 1,8,7,9,2,0
    arraySize dword 6           
.CODE 
MAIN PROC 
mov esi,offset array 
    mov ecx, arraySize           
    dec ecx                      
outer_loop: 
    mov ebx, 0                  
    mov edi, 0                   
inner_loop: 
    mov eax, [esi + ebx*4]    
    mov edx, [esi + ebx*4 + 4]  
    cmp eax, edx 
    jbe no_swap                  
    
    mov [esi + ebx*4], edx     
    mov [esi + ebx*4 + 4], eax  
    mov edi, 1                    
no_swap: 
    inc ebx                      
    cmp ebx, ecx                
    jl inner_loop                 
    cmp edi, 0                    
    je sorted                    
    dec ecx                       
    jnz outer_loop                
sorted: 
    mov ecx, arraySize          
    mov ebx, 0                  
print_loop: 
    mov eax, [esi + ebx*4]     
    call WriteDec                
    call Crlf    
    inc ebx                       
    cmp ebx, ecx               
    jl print_loop                 
    exit 
MAIN ENDP 
END MAIN
