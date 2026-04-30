; Q2: 2) Write an assembly language program to take 6 inputs from the user, multiply 3 with first 2 numbers and add 5 in last two numbers and show result.

input macro var
    print msg
    mov ah, 01h
    int 21h
    mov var, al
    print newline
endm

print macro str
    lea dx, str
    mov ah, 09h
    int 21h
endm

.model small
.stack 100h

.data
msg db 'Enter number: $'
newline db 13, 10, '$'
var1 db ?
var2 db ?
var3 db ?
var4 db ?
var5 db ?
var6 db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    ; input
    input var1
    input var2
    input var3
    input var4
    input var5
    input var6

    print newline

    ; calculate

    ; print 
    

    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main