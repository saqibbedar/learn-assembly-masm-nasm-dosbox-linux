; Program to draw box

.model small
.stack 100h

.data

.code
main proc
    mov ah, 06h         ; scroll window up
    mov al, 10          ; scroll height

    mov bh, 01000000b   ; red color in binary [0: blink, 100: background red, 0: intensity, 000: foreground, b: binary]
 
    ; starting position
    mov ch, 0           ; top 
    mov cl, 0           ; left side     

    ; top-to-bottom
    mov dh, 24          ; height
    mov dl, 24           ; width

    ; call graphics interrupt
    int 10h

    ; terminate program
    mov ah, 4ch
    int 21h
main endp
end main