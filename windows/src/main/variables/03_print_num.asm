; Program to print number

.model small
.stack 100h

.data
num1 dw 1000    ; 2bytes

.code 
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    mov ax, num1
    add ax, 20          ; 120
    mul ax, 2           ; 240
    div ax, 240         ; 1

    ; print
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main