; Program to subtract two numbers
;
; 2 - 1 = 1

.model small
.stack 100h

.data

.code
main proc

    ; set values in general purpose register bl, and cl
    mov bl, 2
    mov cl, 1

    ; perform subtraction
    sub bl, cl

    ; save values into dl
    mov dl, bl

    ; convert number -> ascii
    add dl, 48

    ; display
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp
end main