; Program to print newline or print text on new line
;
;   13, 10 are used for newline 
;   10: newline
;   13: carriage or bring pointer/cursor at leftmost
;

.model small
.stack 100h

.data
; in msg1 13, 10 are ignored because after '$' nothing is read.
msg1 db "Hello, I am Saqib Bedar. $", 13, 10
msg2 db "And, I am a Computer Science student at Quaid-i-Azam university, Islamabad, Pakistan.$"

; 13, 14 will cause newline and the message will be printed at newline and again it will take cursor to newline
msg3 db 13, 10, "Currently, I am enrolled in 6th semester.", 13, 10, '$'
; this msg will printed on newline as last message set cursor at newline
msg4 db "For more, you can visit to my portfolio: https://saqibbedar.github.io.$"

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; print msg1
    mov dx, offset msg1
    mov ah, 09h
    int 21h

    ; print msg2
    lea dx, msg2
    mov ah, 09h
    int 21h

    ; print msg3
    lea dx, msg3
    mov ah, 09h
    int 21h

    ; print msg4
    mov dx, offset msg4
    mov ah, 09h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main
