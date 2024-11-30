INCLUDE IRVINE32.INC

.DATA
array dword 5 DUP(?)

input byte "Enter values of array",0
output_msg byte "Sorted values are:",0

.CODE
MAIN PROC

    
    mov edx, offset input
    CALL WriteString
    CALL crlf

  
    mov ecx, 5
    mov esi, 0            
    mov edx, offset array

loop1:
    CALL ReadInt
    mov [edx + esi*4], eax
    inc esi
    LOOP loop1

    ; Sorting
    mov ecx, 5            ; outer loop counter
    mov edx, offset array

outer_loop:
    push ecx
    mov ecx, 4            ; inner loop counter 
    mov esi, 0            ; reset index for inner loop

inner_loop:
    mov eax, [edx + esi*4]       
    mov ebx, [edx + esi*4 + 4]   

    cmp eax, ebx
    jle no_swap

    ; Swap elements
    mov [edx + esi*4], ebx
    mov [edx + esi*4 + 4], eax

no_swap:
    inc esi
    loop inner_loop
    pop ecx
    loop outer_loop

    ; Print sorted array
    mov edx, offset output_msg
    CALL WriteString
    CALL CRLF

    mov ecx, 5
    mov esi, 0
    mov edx, offset array

display_loop:
    mov eax, [edx + esi*4]
    CALL WriteDec
    CALL CRLF
    inc esi
    LOOP display_loop

    EXIT
MAIN ENDP
END MAIN