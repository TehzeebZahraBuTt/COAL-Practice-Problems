INCLUDE IRVINE32.INC

.DATA
arr dword 10 DUP(?)

input_msg byte "Enter values of array",0
output_msg byte "Sorted values are:",0

.CODE
MAIN PROC

    
    mov edx, offset input_msg
    CALL WriteString
    CALL CRLF

    ; For getting input 
    mov ecx, 10
    mov esi, 0            ; start from first element
    mov edx, offset arr

loop1:
    CALL ReadInt
    mov [edx + esi*4], eax
    inc esi
    LOOP loop1

    ; Sorting
    mov ecx, 10            ; outer loop counter
    mov edx, offset arr

outer_loop:
    push ecx
    mov ecx, 9            ; inner loop counter 
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

    mov ecx, 10
    mov esi, 0
    mov edx, offset arr

display_loop:
    mov eax, [edx + esi*4]
    CALL WriteDec
    CALL CRLF
    inc esi
    LOOP display_loop

    EXIT
MAIN ENDP
END MAIN