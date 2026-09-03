addi x10, x0, 100 # g = x0 + 10
addi x11, x0, 20 # h = x0 + 10
addi x12, x0, 30 # i = x0 + 10
addi x13, x0, 40 # j = x0 + 10


jal x1, leafexample
li x10, 1
addi x11, x20, 0
ecall
j exit

leafexample:
    add x18, x10, x11 # x18 = x10 + x11
    add x19, x12, x13 # x19 = x12 + x13
    sub x20, x18, x19 # x20 = x18 + -x19
    
    jalr x0, 0(x1)
exit:
    