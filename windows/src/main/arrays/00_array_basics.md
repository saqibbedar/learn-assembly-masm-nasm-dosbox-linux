## Array can be declared as:

```asm
arr1 db 1,2,3,4
arr2 db 'a', 'b', 'c'
arr3 db 'abc'
arr4 db ?, ?, ?, ?               ; not initialized with any value
```
## Array duplication syntax:

```asm
arr1 db 3 dup('a')               ; 3 is size and dup-> function to spread 'a' for size times
arr2 db 4 dup(?)                 ; unassigned array
```

# Accessing array values:

We use index registers si and di. 

For example:

```asm
mov si, offset arr1
mov dx, si                      ; ❌:this is wrong because si holds addressnot value
mov dx, [si]                    ; ✅:correct because accessing value at thatindex(addr)
```

### how then access next values?

We will use traditional methods as we do in other programming languages i.e., C/C++, etc.

Here is example:

```asm
mov si, offset arr1             ; set pointer at first index
mov dx, [si]                    ; assign first index value in data register

mov dx, [si+1]                  ; increment for next value
inc si                          ; conversely, we can use `inc si` instead of mov dx, [si+1]
```