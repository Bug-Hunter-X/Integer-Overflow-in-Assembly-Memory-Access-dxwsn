section .data

section .bss

section .text
    global _start

_start:
    ; Get values for ebx and ecx (replace with your actual values)
    mov ebx, 0x1000 ; Example value
    mov ecx, 1000   ; Example value

    ; Check for potential overflow
    mov eax, ecx
    imul eax, 4    ; Multiply ecx by 4
    jo overflow_handler ; Jump if overflow occurred

    add eax, ebx    ; Add ebx
    jo overflow_handler ; Jump if overflow occurred

    add eax, 0x10   ; Add the offset
    jo overflow_handler ; Jump if overflow occurred

    ; Safe memory access
    mov esi, eax
    mov eax, [esi]

    ; ... rest of your code ...

jmp exit

overflow_handler:
    ; Handle overflow appropriately
    ; For example: exit the program or use a different memory allocation strategy
    mov eax, 1      ; sys_exit
    xor ebx, ebx    ; exit code 0
    int 0x80

exit:
    mov eax, 1      ; sys_exit
    xor ebx, ebx    ; exit code 0
    int 0x80