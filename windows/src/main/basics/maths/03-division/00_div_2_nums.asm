; Program to divide two numbers

.model small
.stack 100h

.data

.code
main proc
    mov al, 4       ; first number
    mov bl, 2       ; second number
    div bl          ; division

    add al, 48      ; ascii

    ; print result
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main