; Program to input two numbers and add them

.model small
.stack 100h

.data

.code
main proc
    
    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48      ; keyboard entered value is ASCII, convert it back to number


    ; save value into data register
    mov dl, al

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48      ; ascii ti number

    ; add current value into dl register
    add dl, al

    ; write number ASCII
    add dl, 48

    ; display
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp
end main