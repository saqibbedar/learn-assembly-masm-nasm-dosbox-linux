; Q3: b) Covert following C++ code into assembly language code.
;
; for(int i=0; i<10; i++) {cout<<"\nPakistan";}
;

print macro p1
    lea dx, p1
    mov ah, 09h
    int 21h
endm

.model small
.stack 100h

.data
msg db 13, 10, 'Pakistan$'

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    mov cx, 10              ; assign counter register with 10

l1:
    print msg
    loop l1

    mov ah, 4ch
    int 21h

main endp
end main