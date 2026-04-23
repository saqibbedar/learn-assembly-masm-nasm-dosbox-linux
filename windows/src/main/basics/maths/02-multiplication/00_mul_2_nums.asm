; Program to multiply two numbers
; 2 x 3 = 6
;


.model small
.stack 100h

.data

.code
main proc
    mov al, 2       ; first number
    mov bl, 3       ; second number
    mul bl          ; al x bl -> ax (tricky part: cpu automatically assumes al to be multiplied with bl) so no need to specify it.  

    add al, 48      ; convert to ascii

    ; print
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate
    mov al, 4ch
    int 21h

main endp
end main