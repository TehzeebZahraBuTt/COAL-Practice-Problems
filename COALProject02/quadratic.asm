INCLUDE IRVINE32.INC 
.DATA  
 PROMPT1 BYTE "Enter coefficient a:",0 
 PROMPT2 BYTE "Enter coefficient b:",0 
 PROMPT3 BYTE "Enter coefficient c:",0 
 PROMPT4 BYTE "No real root exist",0 
    a REAL4 ?        
    b REAL4 ?        
    c1 REAL4 ?       
 root1 REAL4 ? 
 root2 REAL4 ? 
    discriminant REAL4 ? 
    num REAL4 4.0 
    num2 REAL4 ? 
    num3 REAL4 2.0 
.CODE 
MAIN PROC 
    mov edx, offset PROMPT1 
    CALL WriteString 
    CALL ReadFloat 
    FSTP a 
    mov edx, offset PROMPT2 
    CALL WriteString 
    CALL ReadFloat 
    FSTP b 
    mov edx, offset PROMPT3 
    CALL WriteString 
    CALL ReadFloat 
    FSTP c1 
    
    FLD b                        
    FMUL ST(0),ST(0)        
    FLD a                        
    FLD c1                       
    FMUL                     
    FLD num                      
    FMUL                         
     
    FSUB                         
    FST discriminant               
    
    FLD discriminant              
    FLDZ 
    FCOMIP ST(0), ST(1)           
    FSTP ST(0)                    
    FSTSW AX                  
    SAHF                      
    JC ComplexRoot            
    ;Calculate roots 
    FLD discriminant              
    FSQRT                         
    FLD b                         
    FCHS                       
    FADD                     
    FLD num3                      
    FLD a                         
    FMUL                     
    FDIV                         
    FSTP root1                    
    FLD discriminant              
    FSQRT                         
    FLD b                         
    FCHS                       
    FSUB                         
    FLD num3                      
    FLD a                         
    FMUL                    
    FDIV                         
    FSTP root2                    
 
    ;Display roots 
    FLD root1 
    Call WriteFloat 
    Call CRLF 
    FLD root2 
    Call WriteFloat 
    JMP codeEnd 
 ComplexRoot: 
    mov edx,offset PROMPT4 
    Call WriteString 
codeEnd: 
EXIT 
MAIN ENDP 
END MAIN 
