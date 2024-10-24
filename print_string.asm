print_string:
    print_loop:
        mov al, [bx]
        cmp al, 0
        je done_print_string
        mov ah, 0x0e
        int 0x10
        inc bx
        jmp print_loop

    done_print_string:
        mov al, 0x0D
        mov ah, 0x0e
        int 0x10
        mov al, 0x0A
        mov ah, 0x0e
        int 0x10
        ret
