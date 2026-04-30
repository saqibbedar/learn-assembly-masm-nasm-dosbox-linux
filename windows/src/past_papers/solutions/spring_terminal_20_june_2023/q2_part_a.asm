; Q2: 1) Write an assembly language program to swap three numbers. (Before swapping: x=2, y=5, z=1; After swapping: x=5, y=1, z=2).

print_str macro p1
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
before db "Before: $"
x db 13, 10, "x=$"
y db 13, 10, "y=$"
z db 13, 10, "z=$"
after db 13, 10, 10, "After: $"

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; setup data
    mov ax, 2           ; x=2
    mov bx, 5           ; y=5
    mov cx, 1           ; z=1
    
    print_str before
    print_str x
    print_num al
    print_str y
    print_num bl
    print_str z
    print_num cl

    ; push
    push ax
    push bx
    push cx

    ; pop 
    pop bx
    pop ax
    pop cx

    ; print 
    print_str after
    print_str x
    print_num al
    print_str y
    print_num bl
    print_str z
    print_num cl

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main


; Simple version based on question:

; mov ax, 2
; mov bx, 5
; mov cx, 1

; push ax
; push bx
; mov cx

; pop bx
; mov ax
; mov cx