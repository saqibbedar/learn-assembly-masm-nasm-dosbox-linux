; Write a program to get string from the user as character by character and store it in an array, then print the array.

.model small
.stack 100h

.data
arr1 db 100 dup('$')

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; initialize array address into src index reg
    lea si, arr1

input:
    ; input character
    mov ah, 01h
    int 21h

    ; input until enter key is pressed
    cmp al, 13
    je terminate

    ; else continue input until "$"
    mov [si], al
    inc si

    jmp input

terminate:
    ; array is now loaded with user input, mov it into dx for print
    mov dx, offset arr1

    ; print array as string [array is string of characters]
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main