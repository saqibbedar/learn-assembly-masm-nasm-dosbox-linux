# asm

A collection of programs and projects written in assembly language.

## Structure

```
asm/
├── linux/   # Includes assembly programs for Linux (x86-64)
└── windows/   # Includes assembly programs for Windows (x86-64)
```

## Getting Started

### Linux

The Linux examples are already set up to build and run with NASM and `ld`.

#### Prerequisites

- [NASM](https://www.nasm.us/) – Netwide Assembler
  - Install on Debian/Ubuntu:
    ```bash
    sudo apt-get install nasm
    ```
  - Verify installation:
    ```bash
    nasm -v
    ```
- A Linux x86-64 environment (or compatible)

  - Verify your system architecture:
    ```bash
    uname -m
    ```
    Expected output: `x86_64`

- Build & Run
  ```bash
  # Navigate to the program directory
  cd linux/programs/src/<directory_name>

  # Assemble
  nasm -f elf64 <program_name>.asm -o <program_name>.o # -f elf64 specifies the output format for 64-bit Linux

  # Link
  ld <program_name>.o -o <program_name> # ld is the GNU linker

  # Run
  ./<program_name>
  ```

### Windows

The Windows examples use MASM inside DOSBox. The repository includes a starter environment archive at [windows/setup-dosbox-win-env/8086_Assembler.zip](windows/setup-dosbox-win-env/8086_Assembler.zip).

#### Prerequisites

- [DOSBox](https://sourceforge.net/projects/dosbox/)
- `MASM.EXE`
- `LINK.EXE`

Place `MASM.EXE` and `LINK.EXE` in a folder on your machine, for example `C:\8086`.

Then download [8086_Assembler.zip](windows/setup-dosbox-win-env/8086_Assembler.zip), unzip it, and copy the extracted files into the same `C:\8086` folder.

#### Build & Run in DOSBox

- Put your `.asm` file in `C:\8086`.

- Open DOSBox.

- Mount the folder:
  ```text
  mount c c:\8086
  ```

- Switch to the C drive:

  ```text
  c:
  ```

- Assemble the code to create the object file:

  ```text
  masm main.asm;
  ```

- Link the object file to create the executable:

  ```text
  link main.obj;
  ```

- Run the program:

  ```text
  main
  ```

#### Optional VS Code Workflow

If you want a simpler editor-driven flow, install the [MASM/TASM by xsro](https://marketplace.visualstudio.com/items?itemName=xsro.masm-tasm) extension in VS Code. It adds a right-click action that lets you run MASM assembly files directly from the editor.
