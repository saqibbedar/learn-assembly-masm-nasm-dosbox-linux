; Q2: b) Generate and display ten pseudorandom signed integers in the range (0-99).

.model small
.stack 100h

.dat

.code 
main proc

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main