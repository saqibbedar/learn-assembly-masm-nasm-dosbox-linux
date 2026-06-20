; *
; **
; ***
; ****
; *****

.model small
.stack 100h

.data
endl db 13,10,'$'

.code
main proc

    mov ax,@data
    mov ds,ax

    mov cx,5          ; total rows
    mov bx,1          ; current row number

outer_loop:

    mov si,bx         ; number of stars in current row

inner_loop:

    mov ah,02h
    mov dl,'*'
    int 21h

    dec si
    jnz inner_loop

    ; print newline
    mov ah,09h
    lea dx,endl
    int 21h

    inc bx
    loop outer_loop

    mov ah,4ch
    int 21h

main endp
end main