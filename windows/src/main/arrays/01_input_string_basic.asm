; Write a program to get string from the user as character by character and store it in an array, then print the array.

.model small
.stack 100h

.data
arr1 db 100 dup('$') ; array to store string


.code 
main proc
    ; load and initialize data
    mov ax, @data
    mov ds, ax

    lea si, arr1

input:
    ; input 
    mov ah, 01h
    int 21h

    ; if enter key entered print array
    cmp al, 13
    je end_program

    ; else continue input until '$'
    mov [si], al        ; store input value in array before increment
    inc si

    jmp input                    

end_program:
    lea dx, arr1        ; store string in data register
    ; print array
    call print_array

    ; terminate program
    mov ah, 4ch
    int 21h
main endp

print_array proc
    mov ah, 09h
    int 21h

    ret
print_array endp

end main