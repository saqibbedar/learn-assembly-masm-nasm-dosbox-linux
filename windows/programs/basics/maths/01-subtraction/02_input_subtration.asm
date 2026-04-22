; Program to input two numbers and perform subtraction

.model small
.stack 100h

.data

.code
main proc

    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48 ; ascii -> number conversion

    ; save first number into data register
    mov dl, al

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48 ; ascii -> number conversion

    ; perform subtraction
    sub dl, al

    ; convert number to ascii
    add dl, 48

    ; display
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp
end main