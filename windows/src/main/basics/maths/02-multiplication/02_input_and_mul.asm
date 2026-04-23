; Program to multiply two numbers

.model small
.stack 100h

.data
msg1 db "enter first number: $"
msg2 db 13, 10, "enter second number: $"
msg3 db 13, 10, "Result: $"

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax 

    ; print msg1
    lea dx, msg1
    mov ah, 09h
    int 21h

    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48
    
    ; preserve first number
    mov bl, al

    ; print msg2
    lea dx, msg2
    mov ah, 09h
    int 21h

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48

    ; multiplication
    mul bl                  ; multiply bl with value inside in al and value would be saved in ax

    ; convert to ascii for display
    add al, 48

    ; preserve result
    mov bl, al              

    ; print result message
    mov dx, offset msg3
    mov ah, 09h
    int 21h
    
    ; print value
    mov dl, bl
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main