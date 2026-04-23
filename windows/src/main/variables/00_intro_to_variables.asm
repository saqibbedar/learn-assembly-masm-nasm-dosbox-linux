.model small
.stack 100h

.data
; initialized var1 with 1byte size and with value 1, note: variables requires ascii so we can either pass ascii value i.e., 49 for 1 or wrap them into single quotes, hence automatically it would be handled afterwards.
var1 db '1'
; here we have not initialized variable with any value, hence we have used ?
var2 db ?
; we have used $ at the end of string, and it marks termination of string.
var3 db 'Hello, world$'


.code
main proc
    mov ax, @data               ; load memory address of data section into accumulator
    mov ds, ax                  ; load data into data segment register as an heap memory for fast retrieval

    ; print var1
    mov dl, var1                ; added var1 in dl for printing its value
    mov ah, 02h
    int 21h

    ; initialize and store value in var2
    mov bl, 'A'
    mov var2, bl

    ; print var2
    mov dl, var2
    mov ah, 02h
    int 21h

    ; load string into data register
    mov dx, offset var3         ; to match the byte we used dx not dl and also uses offset to read all characters
    ; same above line can be written as: lea dx, var3 (load effective address) 
    ; mov dx, offset var3 = lea dx, var3

    ; print var3
    mov ah, 09h                 ; 09h service routine to print strings
    int 21h

    ; end program
    mov ah, 4ch
    int 21h

main endp
end main