; hello.asm
; Assemble with: nasm -f bin -o hello.com hello.asm

org 100h ; .COM files start execution at address 0100h

section .text
start:
    ; Display message using DOS function 09h (Write string to STDOUT)
    mov dx, message_string ; DS:DX points to the string
    mov ah, 09h             ; Function 09h
    int 21h                 ; Call DOS interrupt

    ; Terminate program using DOS function 4Ch (Exit with return code)
    mov ax, 4C00h           ; Function 4Ch, return code 0
    int 21h                 ; Call DOS interrupt

section .data
message_string db 'Hello, World!', 13, 10, '$' ; String terminated by '$'
                                           ; 13 = Carriage Return, 10 = Line Feed