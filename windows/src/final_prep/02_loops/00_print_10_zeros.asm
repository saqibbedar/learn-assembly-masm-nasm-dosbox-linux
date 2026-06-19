.model small
.stack 100h

.data

.code
main proc
    mov cx, 10
    
    mov dl, 48

l1:
    mov ah, 02h
    int 21h
loop l1

    mov ah, 4ch
    int 21h

main endp
end main