; Program to check if number is even or odd

print macro p1
    lea dx, p1
    mov ah, 09h
    int 21h
endm

.model small
.stack 100h

.data
msg_odd db "Number is odd$"
msg_even db "Number is even$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, 4

    test ax, 1
    jne odd

    print msg_even
    jmp end_program

odd:
    print msg_odd

end_program:
    mov ah, 4ch
    int 21h

main endp
end main