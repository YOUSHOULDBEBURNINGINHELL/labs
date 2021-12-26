%include "io.inc"

; 14, 16, 26
;a/b+c

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ;MOV AX, 0x0E
    ;MOV BL, 0x10
    ;MOV CL, 0x1A
    
    ;DIV BL  
    ;ADD AL, CL
    
    FLD DWORD [c]
    FLD DWORD [a]
    FLD DWORD [b]
    FDIV
    FADD
    FST DWORD [r]
    ;ret
    
    ;write your code here
    xor eax, eax
    ret
    
    section .data
    a: DD 0x0E
    b: DD 0x10
    c: DD 0x1A
    r: DD 0x00