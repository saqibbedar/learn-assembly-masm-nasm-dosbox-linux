.model small
.stack 100h

.data
filename db 'FILE.TXT', 0
handle dw ?

openMsg db 'File opened successfully$'
errorMsg db 'Could not open file$'

.code
main proc

    mov ax, @data
    mov ds, ax

    ; open file
    mov ah, 3Dh
    mov al, 00h
    lea dx, filename
    int 21h

    jc file_error      ; if error, jump

    mov handle, ax     ; AX contains file handle

    ; print success message
    mov ah, 09h
    lea dx, openMsg
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