# Assembly Language (DOS 8086 + Linux x86-64) — Programs & Setup

This repository contains **assembly language examples and learning material** for:

- **Linux x86-64 assembly** using **NASM** + **ld**
- **DOS 8086 assembly** on Windows using **DOSBox** + **MASM/LINK**

It includes:
- beginner-friendly programs to advanced programs
- an organized Windows/DOS learning track (basics → variables → loops → arrays → procedures → stack → macros)
- a practical **environment setup** for running 8086 assembly using DOSBox

---

## Repository Structure

```text
asm/
├── linux/
│   ├── programs/
│   │   └── src/
│   │       └── hello_world/
│   │           ├── firstProgram.asm
│   │           └── hello_world.asm
│   └── projects/                # placeholder for larger Linux projects
└── windows/
    ├── 00-setup-dosbox-win-env/  # DOSBox + MASM environment starter
    └── src/
        ├── assignments/
        ├── main/
        │   ├── basics/
        │   ├── variables/
        │   ├── conditionals/
        │   ├── loops/
        |   ├── arrays/
        │   ├── macro/
        │   ├── procedures/
        │   └── stack/
        ├── past_papers/
        ├── practice/
        ├── questions/
        └── src.yml
```

---

## Getting Started (Linux: NASM + ld, x86-64)

### Prerequisites
- NASM: https://www.nasm.us/
- Linux x86-64 environment

Install on Debian/Ubuntu:
```bash
sudo apt-get update
sudo apt-get install -y nasm
```

Verify:
```bash
nasm -v
uname -m   # expected: x86_64
```

### Build & Run (example)
```bash
cd linux/programs/src/hello_world

# Assemble (ELF64)
nasm -f elf64 hello_world.asm -o hello_world.o

# Link
ld hello_world.o -o hello_world

# Run
./hello_world
```

> If you want, you can add a simple Makefile later to make builds one-command.

---

## Getting Started (Windows: DOS 8086 via DOSBox + MASM)

This repo includes a DOSBox environment starter under:
- `windows/00-setup-dosbox-win-env/`

### Prerequisites
- DOSBox: https://sourceforge.net/projects/dosbox/
- `MASM.EXE`
- `LINK.EXE`

### Recommended folder layout (example)
Create a folder on your PC:
- `C:\8086`

Put these in `C:\8086`:
- `MASM.EXE`
- `LINK.EXE`
- the extracted setup files from [`windows/00-setup-dosbox-win-env/`](./windows/00-setup-dosbox-win-env/)

### Build & Run in DOSBox
1) Put your `.asm` file inside `C:\8086` (for example `main.asm`)
2) Open DOSBox and run:

```text
mount c c:\8086
c:
masm main.asm;
link main.obj;
main
```

---

## Examples Included

### Linux
- `linux/programs/src/hello_world/hello_world.asm`
- `linux/programs/src/hello_world/firstProgram.asm`

### Windows / DOS 8086
- `windows/src/` (organized topic-wise learning material)

---

## Optional: VS Code Workflow (Editing)
You can edit `.asm` files in VS Code. For MASM/TASM workflows, this extension may help:
https://marketplace.visualstudio.com/items?itemName=xsro.masm-tasm

---

## License
This repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.