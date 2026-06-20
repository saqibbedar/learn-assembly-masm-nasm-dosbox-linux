; *****
; ****
; ***
; **
; *

.model small
.stack 100h

.data
endl db 13,10,'$'

.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 5          ; total rows
    mov bx, 5          ; start from 5 stars

outer_loop:
    mov si, bx         ; stars for current row

inner_loop:
    mov ah, 02h
    mov dl, '*'
    int 21h

    dec si
    jnz inner_loop

    ; print newline
    mov ah, 09h
    lea dx, endl
    int 21h

    dec bx             ; next row has one less star
    loop outer_loop

    ; terminate program
    mov ah, 4Ch
    int 21h

main endp
end main