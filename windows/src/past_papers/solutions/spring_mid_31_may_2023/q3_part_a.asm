; Q3: a)  What will AX contain after following instructions have executed:

; Answer: The program results in an infinite loop because CX is reinitialized inside L1. The LOOP instruction repeatedly jumps to L1, preventing execution from reaching LOOP L2. Therefore, AX does not reach a final value.

.model small
.stack 100h

.data

.code
main proc
    mov ax, 0
    mov cx, 10

L1:
    mov ax, 3
    mov cx, 5

l2:
    add ax, 2
    loop l1
    loop l2

main endp
end main