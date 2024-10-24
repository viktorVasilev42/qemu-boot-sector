print_hex:
    mov cl, 12

    print_hex_loop:
        mov dx, bx
        shr dx, cl
        and dx, 0x0f
        call handle_digit_is_alph
        add dx, '0'
        mov ah, 0x0e
        mov al, dl
        int 0x10
        sub cl, 4
        cmp cl, -4
        je done_print_hex
        jmp print_hex_loop

        done_print_hex:
            ret

handle_digit_is_alph:
    cmp dx, 9
    jg add_7
    ret

    add_7:
        add dx, 7
        ret
