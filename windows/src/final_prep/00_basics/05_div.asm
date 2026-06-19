.model small
.stack 100h

.data

.code
main proc
    mov al, 8
    mov bl, 2
    div bl

    add al, 48

    mov dl, al

    mov ah, 02h
    int 21h

    mov ah, 21h
    int 21h

main endp
end main