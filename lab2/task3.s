.text
.globl main

main:
    li x24, 0x200       # base address of array
    li x25, 10          # upper bound (array size = 10)


    li x22, 0           # i = 0

loop1:
    bge  x22, x25, end_loop1
    slli x26, x22, 2    # offset = i * 4
    add  x27, x24, x26   # &array[i]
    sw   x22, 0(x27)    # array[i] = i 
    addi x22, x22, 1    # i++
    beq  x0,  x0,  loop1

end_loop1:
    li x22, 0           # i = 0
    li x23, 0           # sum = 0

loop2:
    bge  x22, x25, end_loop2
    slli x26, x22, 2    # offset = i * 4
    add  x27, x24, x26   # &array[i]
    lw   x28, 0(x27)    # load array[i]
    add  x23, x23, x28   # sum += array[i]
    addi x22, x22, 1    # i++
    beq  x0,  x0,  loop2

end_loop2:
