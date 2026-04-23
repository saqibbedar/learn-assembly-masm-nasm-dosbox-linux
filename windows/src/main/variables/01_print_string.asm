; Program to print string of characters

.model small
.stack 100h

.data
str1 db 'Saqib Bedar$'      ; str1: string1

.code 
main proc

    mov ax, @data       ; load data address
    mov ds, ax          ; setup data into heap for fast retrieval

    ; print str1
    lea dx, str1        ; we can write it also: mov dx, offset str1
    mov ah, 09h         ; 09h service routine to print strings
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main