; Program to draw a filled box in graphics mode

.model small
.stack 100h

.data
x1 dw 80
y1 dw 50
x2 dw 240
y2 dw 150
color db 04h

.code
main proc

    mov ax, @data
    mov ds, ax

    ; Set graphics mode 13h
    mov ah, 00h
    mov al, 13h
    int 10h

    mov dx, y1          ; start from y1

row_loop:
    mov cx, x1          ; start from x1 for every row

col_loop:
    call put_pixel
    inc cx
    cmp cx, x2
    jle col_loop

    inc dx
    cmp dx, y2
    jle row_loop

    ; Wait for keypress
    mov ah, 00h
    int 16h

    ; Restore text mode
    mov ah, 00h
    mov al, 03h
    int 10h

    ; Exit
    mov ah, 4Ch
    int 21h

main endp


put_pixel proc

    mov ah, 0Ch
    mov al, color
    mov bh, 00h
    int 10h

    ret

put_pixel endp

end main