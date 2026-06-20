; Program to read FILE.TXT and print it

.model small
.stack 100h

.data
filename db 'FILE.TXT',0
handle dw ?

buffer db 100 dup(?)      ; space for 100 bytes

errorMsg db 'Could not open/read file$'

.code
main proc

    mov ax, @data
    mov ds, ax

    ; -------------------------
    ; 1. Open file
    ; -------------------------
    mov ah, 3Dh            ; open file
    mov al, 00h            ; read-only mode
    lea dx, filename       ; DS:DX = filename
    int 21h

    jc file_error          ; if error, jump

    mov handle, ax         ; save file handle


    ; -------------------------
    ; 2. Read file
    ; -------------------------
    mov ah, 3Fh            ; read from file
    mov bx, handle         ; BX = file handle
    mov cx, 100            ; read max 100 bytes
    lea dx, buffer         ; DS:DX = buffer address
    int 21h

    jc file_error          ; if read error

    ; after reading:
    ; AX = number of bytes actually read


    ; -------------------------
    ; 3. Print file content
    ; -------------------------
    mov cx, ax             ; CX = number of bytes read

    mov ah, 40h            ; write output
    mov bx, 1              ; 1 = screen/stdout
    lea dx, buffer         ; DS:DX = buffer
    int 21h


    ; -------------------------
    ; 4. Close file
    ; -------------------------
    mov ah, 3Eh            ; close file
    mov bx, handle
    int 21h

    jmp exit_program


file_error:
    mov ah, 09h
    lea dx, errorMsg
    int 21h


exit_program:
    mov ah, 4Ch
    int 21h

main endp
end main