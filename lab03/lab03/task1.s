addi x10, x0, 12 #x10 = x0+12
addi x11, x0, 12 #x11 = x0+12

jal x1, sum #jump to x1 and save position to ra

addi x11, x10, 0 #x11 = x10 +0

li x10, 1 #x10 =1 
ecall
j exit
sum:
    add x10, x11, x10 # x10 = x11 + x10
    jalr x0,0(x1)
exit:
