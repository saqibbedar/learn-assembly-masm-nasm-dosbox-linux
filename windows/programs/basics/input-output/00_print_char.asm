; Program to print single character

.model small
.stack 100h

.data

.code
main proc
    mov dl, 'a'     ; move 'a' into data register

    mov ah, 02h     ; call 02h service routine to print 'a' 
    int 21h         ; interrupt

    mov ah, 4ch
    int 21h

main endp
end main