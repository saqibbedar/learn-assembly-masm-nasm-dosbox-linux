; Program to multiply two numbers using

.model small
.stack 100h

.data

.code
main proc
    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48

    ; save first number
    mov bl, al

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48

    ; perform multiplication
    mul bl

    ; convert back to ascii
    add al, 48

    ; print
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h
    
main endp
end main