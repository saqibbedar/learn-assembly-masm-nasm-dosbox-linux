; Task 2: Triangle Pattern
; Q: Write a program to print the triangle upwards and downwards. use nested loops.
;
; Name: Muhammad Saqib
; Reg. No: 04072313037

.model small
.stack 100h

.data
n db 5
newline db 0dh,0ah,'$'

.code
main proc
    mov ax,@data
    mov ds,ax

    ; Start from the first row of the triangle.
    mov cl,1

upper:
    ; Print the upper half row by row.
    mov al,n
    sub al,cl
    mov bl,al

space1:
    ; Print leading spaces so the triangle stays centered.
    cmp bl,0
    je star1
    mov dl,' '
    mov ah,02h
    int 21h
    dec bl
    jmp space1

star1:
    ; Print the stars for the current upper row.
    mov al,cl
    add al,cl
    dec al
    mov bl,al

print1:
    ; Keep printing stars until the row is complete.
    cmp bl,0
    je next1
    mov dl,'*'
    mov ah,02h
    int 21h
    dec bl
    jmp print1

next1:
    ; Move to the next line before processing the next row.
    mov dx,offset newline
    mov ah,09h
    int 21h

    inc cl
    cmp cl,n
    jle upper

    ; Reuse the same logic for the lower half, starting one row below the peak.
    mov cl,n
    dec cl

lower:
    ; Print the lower half row by row.
    mov al,n
    sub al,cl
    mov bl,al

space2:
    ; Print leading spaces for the lower half.
    cmp bl,0
    je star2
    mov dl,' '
    mov ah,02h
    int 21h
    dec bl
    jmp space2

star2:
    ; Print the stars for the current lower row.
    mov al,cl
    add al,cl
    dec al
    mov bl,al

print2:
    ; Keep printing stars until the lower row is complete.
    cmp bl,0
    je next2
    mov dl,'*'
    mov ah,02h
    int 21h
    dec bl
    jmp print2

next2:
    ; Finish the row and continue moving downward.
    mov dx,offset newline
    mov ah,09h
    int 21h

    dec cl
    cmp cl,0
    jg lower

    ; Exit cleanly back to DOS.
    mov ah,4ch
    int 21h

main endp
end main