; Program to create OUT.TXT and write text into it

.model small
.stack 100h

.data
filename db 'OUT.TXT',0
handle dw ?

msg db 'Hello, this text is written from 8086 assembly.'
msgLen equ $ - msg

errorMsg db 'File error$'
successMsg db 'Data written successfully$'

.code
main proc

    mov ax, @data
    mov ds, ax

    ; create file
    mov ah, 3Ch
    mov cx, 0
    lea dx, filename
    int 21h

    jc file_error

    mov handle, ax

    ; write to file
    mov ah, 40h
    mov bx, handle
    mov cx, msgLen
    lea dx, msg
    int 21h

    jc file_error

    ; close file
    mov ah, 3Eh
    mov bx, handle
    int 21h

    ; success message
    mov ah, 09h
    lea dx, successMsg
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