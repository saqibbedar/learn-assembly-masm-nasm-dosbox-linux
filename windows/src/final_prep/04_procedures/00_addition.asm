.model small
.stack 100h

.data

.code
main proc
    ; random values
    mov bl, 4
    mov cl, 2
    
    ; call functions
    call addition
    call print_result

    ; terminate program
    mov ah, 4ch
    int 21h
main endp

; print procedure
print_result proc
    mov ah, 02h
    int 21h

    ret
print_result endp

; addition procedure
addition proc
    add bl, cl
    mov dl, bl
    add dl, 48

    ret
addition endp

end main