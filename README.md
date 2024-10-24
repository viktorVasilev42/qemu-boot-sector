# x86 assembly boot sector tested in qemu x86 emulator

Contains routines for:
- **print_string** - printing string in REAL mode with BIOS interrupt
- **print_hex** - print hex numbers in REAL mode with BIOS interrupt
- **print_string_pm** - printing string in 32-bit PROTECTED MODE using VGA
- **disk_load** - loading bytes from disk to memory with BIOS interrupt
- **gdt** - setting up a simple Global Descriptor Table with one Data Segment and one Code Segment
- **switch_to_pm** - disabling BIOS interrupts, loading GDT, setting PM control bit, setting up segment registers, setting up stack pointer register, calling kernel

kernel is a c program and it needs the machine to already be running in 32-bit PROTECTED MODE in order to execute.

![Screenshot from 2024-10-24 12-52-37](https://github.com/user-attachments/assets/33198420-cb58-468c-9afd-eda500930ece)
