.text
.globl main 
main:

    li x1, 5      #a=5
    addi x2, x0, 0  # b=0+0
    addi x1, x2, 32  # a = b+32

    add x19, x1,x2
    addi x5, x19, -5

    sub x20, x1, x5
    sub x21, x2, x1

    add x6, x20, x21
    add x6 , x6, x5

    add x6, x6, x6
    add x6, x1, x2
    add x6, x6, x5
 
end:
    j end