; Program to print a name

.model small
.stack 100h

.data

.code
main proc
    
    ; print 'S'
    mov dl, 'S'
    mov ah, 02h
    int 21h

    ; print 'a'
    mov dl, 'a'
    mov ah, 02h
    int 21h

    ; print 'q'
    mov dl, 'q'
    mov ah, 02h
    int 21h

    ; print 'i'
    mov dl, 'i'
    mov ah, 02h
    int 21h

    ; print 'b'
    mov dl, 'b'
    mov ah, 02h
    int 21h

    mov ah, 4ch 
    int 21h


main endp
end main

; Output: Saqib