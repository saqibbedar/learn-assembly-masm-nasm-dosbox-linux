; Program to add two number (version 2)
;
; 1 + 3 = 4

.model small
.stack 100h

.data

.code
main proc 
    
    mov bl, 1
    add bl, 3

    mov dl, bl
    add dl, 48

    mov ah, 02h
    int 21h

    mov ah, 21ch
    int 21h

main endp
end main