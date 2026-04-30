Here’s a clean exam-style answer:

---

## a) Three basic operations in stack

A **stack** is a **LIFO (Last In First Out)** data structure.

The three basic operations are:

---

### 1) Push

Adds an element to the top of the stack.

```text
PUSH AX
```

Example:

If stack contains:

```text
Top → 10
       20
```

After:

```text
PUSH 30
```

Stack becomes:

```text
Top → 30
       10
       20
```

In 8086 assembly:

```asm
mov ax, 10
push ax
```

AX value is stored in stack and SP moves downward.

---

### 2) Pop

Removes the top element from stack.

```text
POP AX
```

Example:

Stack before pop:

```text
Top → 30
       10
       20
```

After:

```text
POP AX
```

* AX gets value `30`
* Stack becomes:

```text
Top → 10
       20
```

---

### 3) Peek / Top

Views the top element without removing it.

Example:

Stack:

```text
Top → 50
       40
       30
```

Peek operation returns:

```text
50
```

In assembly, there is no direct `peek` instruction, but top value can be accessed using stack pointer references.

---

## Example of stack sequence

```text
PUSH 5
PUSH 10
POP
```

Stack flow:

```text
Initial → Empty

PUSH 5:
Top → 5

PUSH 10:
Top → 10
       5

POP:
Top → 5
```

---

# b) Statement:

> "Only words or double words could be saved into the stack, not a byte."

### Answer: TRUE (for 8086)

### Justification:

8086 stack works with **word-sized data (16-bit)**.

Instructions like:

```asm
push ax
push bx
```

store **2 bytes (1 word)** in stack.

Similarly in 32-bit systems:

```text
double word = 4 bytes
```

can be pushed.

---

### Why byte cannot be pushed?

There is no instruction like:

```asm
push al   ❌
push bl   ❌
```

because stack pointer (`SP`) moves by:

```text
2 bytes in 8086
```

So stack is designed for word operations.

---

### Example:

```asm
mov al, 5
push al   ; invalid
```

This gives error because AL is only 8-bit.

---

### Correct way:

```asm
mov ah, 0
mov al, 5
push ax
```

Now full word is pushed.

---

### Conclusion

The statement is **True** because 8086 stack supports **word operations only**, not byte operations.
