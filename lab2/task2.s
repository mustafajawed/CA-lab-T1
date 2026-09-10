.text
.globl main

main:
    # Setup test condition and input values
    li x20, 1          # x = 1 (switch variable)
    li x22, 20         # b = 20
    li x23, 30         # c = 30
    li x24, 10         # d = 10 (used in case 1 and case 2)

    # Branch comparisons
    li t0, 1
    beq x20, t0, case1

    li t0, 2
    beq x20, t0, case2

    li t0, 3
    beq x20, t0, case3

    li t0, 4
    beq x20, t0, case4

    beq x0, x0, default

case1:
    add x21, x23, x24  # a = c + d
    beq x0, x0, end

case2:
    sub x21, x23, x24  # a = c - d
    beq x0, x0, end

case3:
    slli x21, x22, 1   # a = b << 1
    beq x0, x0, end

case4:
    srai x21, x22, 1   # a = b >> 1
    beq x0, x0, end

default:
    li x21, 0          

end:
