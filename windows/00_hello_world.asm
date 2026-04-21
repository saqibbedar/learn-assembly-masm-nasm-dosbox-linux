.model small
.stack 100h
.data
    msg db 'Hello World!$'

.code
main proc
    mov ax, @data        ; Initialize data segment
    mov ds, ax

    lea dx, msg          ; Load address of msg into DX
    mov ah, 09h          ; DOS function 09h: Print String
    int 21h              ; Call DOS interrupt

    mov ah, 4Ch          ; DOS function 4Ch: Terminate Program
    int 21h
main endp
end main
