; Q3: c) translate the given high level assignment statement B=3-B+7*2 into assembly language.

.model small
.stack 100h

.data

.code
main proc
    mov ax, 7
    mov bx, 2
    mul bx        ; AX = 14

    mov bx, 3
    sub bx, B     ; BX = 3 - B

    add bx, ax    ; BX = 3 - B + 14

    mov B, bx
main endp
end main