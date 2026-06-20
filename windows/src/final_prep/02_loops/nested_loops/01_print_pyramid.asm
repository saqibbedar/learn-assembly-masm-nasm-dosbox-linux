; 1
; 22
; 333
; 4444
; 55555

.model small
.stack 100h

.data
endl db 13,10,'$'

.code
main proc

    mov ax, @data
    mov ds, ax

    mov cx, 5          ; total rows
    mov bx, 1          ; current row number

outer_loop:
    mov si, bx         ; how many times to print current number

inner_loop:
    mov ah, 02h

    mov dx, bx         ; copy row number
    add dl, 30h        ; convert number to ASCII
    int 21h

    dec si
    jnz inner_loop

    ; print newline
    mov ah, 09h
    lea dx, endl
    int 21h

    inc bx             ; next row number
    loop outer_loop

    mov ah, 4Ch
    int 21h

main endp
end main