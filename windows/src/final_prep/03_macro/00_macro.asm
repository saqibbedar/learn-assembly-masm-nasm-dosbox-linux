.model small
.stack 100h

print macro p1
    mov dx, offset p1
    mov ah, 09h
    int 21h
endm

.data
newline db 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 26
    mov bl, 'a'

l1:
    mov dl, bl
    mov ah, 02h
    int 21h
    print newline
    inc bl
loop l1

    mov ah, 4ch
    int 21h

main endp
end main