%include "io.inc"
; 14, 16, 26
;a/b+c
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    MOV AX, 0x0E
    MOV BL, 0x10
    DIV BL  
    MOV CL, 0x1A
    ADD AL, CL
    
    ;write your code here
    xor eax, eax
    ret