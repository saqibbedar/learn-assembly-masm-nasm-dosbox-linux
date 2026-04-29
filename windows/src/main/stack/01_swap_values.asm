; Program to swap values using stack
;
; Note: always use 16bit+ when working with stack data structure 
; no al, dl, etc but ax, dx... and so on.
;
.model small
.stack 100h

.data

newline db 13, 10, '$'

.code
main proc
    ; load and initialize data
    mov ax, @data
    mov ds, ax

    ; define data
    mov ax, '1'
    mov bx, '2'

    ; push 1, 2 into stack
    push ax
    push bx

    ; pop value top-to-bottom and move value into assigned register
    pop ax
    pop bx

    mov dx, ax
    call print
    call print_newline

    mov dx, bx
    call print

    mov ah, 4ch
    int 21h

main endp

print_newline proc
    lea dx, newline
    mov ah, 09h
    int 21h

    ret
print_newline endp

print proc
    mov ah, 02h
    int 21h

    ret
print endp

end main