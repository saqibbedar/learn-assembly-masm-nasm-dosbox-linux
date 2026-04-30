# **1(a) Zero Flag (ZF) vs Overflow Flag (OF)**

### **Zero Flag (ZF)**

* Set when result of operation = **0**
* Used for equality checks

```asm
mov ax, 5
sub ax, 5    ; AX = 0 → ZF = 1
```

---

### **Overflow Flag (OF)**

* Set when **signed result exceeds range**
* Indicates **signed arithmetic error**

```asm
mov al, 127
add al, 1    ; → -128 (overflow) → OF = 1
```

---

### **Difference**

| Flag | Meaning                  |
| ---- | ------------------------ |
| ZF   | Result is zero           |
| OF   | Signed overflow occurred |

---

# **1(b) Uni-directional vs Bi-directional Bus**

### **Uni-directional Bus**

* Data flows **one way only**

```text
CPU → Memory (Write)
```

---

### **Bi-directional Bus**

* Data flows **both ways**

```text
CPU ↔ Memory (Read/Write)
```

---

# **1(c) Direct vs Indirect Addressing**

### **Direct Addressing**

* Address is given explicitly

```asm
mov ax, [1000h]
```

---

### **Indirect Addressing**

* Address is stored in register

```asm
mov si, 1000h
mov ax, [si]
```

---

# **2) Index Registers (SI, DI)**

* Used for **string and array operations**
* Hold **offset addresses**
* Common in:

```asm
mov al, [si]
mov [di], al
```

* Often used with:

```asm
movsb
lodsb
stosb
```

---

# **3) Conditional Jumps**

### **JC (Jump if Carry)**

* CF = 1

```asm
jc label
```

---

### **JNG (Jump if Not Greater)**

* ZF=1 OR SF≠OF

---

### **JNS (Jump if Not Sign)**

* SF = 0

---

### **JNGE (Jump if Not Greater or Equal)**

* SF ≠ OF (same as JL)

---

### **JPE (Jump if Parity Even)**

* PF = 1

---

# **4) Instruction Pipelining (8086 view)**

* CPU splits into:

  * **Execution Unit (EU)**
  * **Bus Interface Unit (BIU)**

### Working:

```text
BIU → fetches instructions
EU → executes instructions
```

* While EU executes current instruction,
  BIU prefetches next instructions (queue)

👉 Improves performance via **parallelism**

---

# **5) Even Parity for 1010**

```text
1010 → number of 1s = 2 (already even)
```

👉 Parity bit = **0**

```text
Final = 10100
```
