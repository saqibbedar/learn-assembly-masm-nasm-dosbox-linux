## Stack basics
A **stack** is a **LIFO (Last In First Out)** data structure.

- undo/redo
- backward/forward
- solving problems (e.g., precedence, brackets matching, etc.) 

## Stack Pointer Register (SP)

A 16-bit special-purpose pointer register that manages the program stack by indicating the offset of the current "top of the stack".

## Stack Segment Register (SS)

Hold the address of space reserved for stack.

## How to use stack?

first you should add stack directive in start of your program `.stack 100h`. This enables you to use stack inside your code segment. 

We mostly be using push and pop, below is the program demonstrating stack usage.


Example:

```asm
; Program to swap values

; define data
mov ax, '1'
mov bx, '2'

; push 1, 2 into stack
push ax
push bx

; pop values
pop ax
pop bx
```

### Note: For stack, datasize should always be greater than 16bits (2bytes):

Example:
```asm
; Following statements are not valid for stack, al is of 8bits(1byte) while stack requires 16bits. Hence, it will result in error for size compatibility. 

push al             ; ❌
pop al              ; ❌

; correct way to use it
pop register        ; ✅
pop ax              ; ✅ ax(16bits): ah(8bits)+al(8bits)
```