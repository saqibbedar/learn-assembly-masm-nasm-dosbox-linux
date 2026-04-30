; Write an assembly program to print pyramid like this:

; 1
; 22
; 333
; 4444
; 55555

print_newline macro p1
    lea dx, p1
    mov ah, 09h
    int 21h
endm

print_num macro p1
    mov dl, p1
    add dl, 48
    mov ah, 02h
    int 21h
endm

.model small
.stack 100h

.data
newline db 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5           ; total rows
    mov bx, 1           ; current row

outer:
    push cx             ; preserve counter value for outer loop
    mov cx, bx          ; set inner loop to run bx times
inner:
    
    print_num bl
    loop inner

    inc bx
    pop cx
    print_newline newline
    loop outer

    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main