.model small
.stack 100h

.data

.code
main proc
    mov dl, 2
    mov al, 2
    mul al

    add al, 48

    mov dl, al
    mov ah, 02h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main