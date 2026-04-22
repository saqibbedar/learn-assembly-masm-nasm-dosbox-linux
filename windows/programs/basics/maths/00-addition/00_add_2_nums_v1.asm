; Program to add two numbers (version 1)
;
; 1 + 2 = 3

.model small
.stack 100h

.data

.code
main proc

    ; Immediate addressing: mov reg, value
    ; using general purpose registers to separately assign values to each register
    mov bl, 1
    mov cl, 2

    ; add bl, cl => 1 + 2
    add bl, cl

    ; save data into data register
    mov dl, bl
    
    ; ASCII: 0=48, adding 48 to resultant will give us ASCII code of that number
    add dl, 48  

    ; display
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main