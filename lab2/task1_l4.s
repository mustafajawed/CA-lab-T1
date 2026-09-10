loop: slli x10, x22, 3
    add x10, x10, x25
    lw x9, 0(x10)
    addi x22, x22, 1
    beq x0, x0, loop
exit:
