%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    LEA EBX, [a]
    XOR BL, BL
    MOV ECX, 10
    MOV DL, 0
    MOV BP, 0
    next:
    MOV AL, [EBX]
    CMP AL, DL
    JG skip
    INC BP
    skip:
    INC EBX
    LOOP next
    MOV AX, BP
    MOV CX, 10
    SUB CX, AX
    
    xor eax, eax
    ret 
    
section .data
a: DB 2, 0, 5, 6, 1, 35, 76, 0, 23, 10