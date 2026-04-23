; Program to input two numbers and perform division

.model small
.stack 100h

.data

.code
main proc
    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48

    mov bl, al          ; preserve first number 

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48

    mov ah, 0           ; clear upper byte
    ; not handling division by 0
    div bl

    add al, 48          ; convert to ascii

    ; print result
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h 

main endp
end main