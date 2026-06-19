.model small
.stack 100h

.data
msg1 db 'Equal', 13, 10, '$'
msg2 db 'Not Equal', 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov bl, 2
    mov cl, 4

    cmp bl, cl
    je equal

    lea dx, msg2
    mov ah, 09h
    int 21h
    jmp terminate

equal:
    lea dx, msg1
    mov ah, 09h
    int 21h
    jmp terminate

terminate:
    mov ah, 4ch
    int 21h

main endp
end main