li x22, 0 #i=0
li x24 ,0x200 #array base address
li x25, 10 #upper bound

loop1:
    bge x22, x25, end_loop
    slli x26, x22, 2 #i*4
    add x27, x24, x26 #array[i] address
    addi x22, x22, 1
    beq x0, x0, loop1

li x22, 0 #i=0
loop2:
    bge x22, x25, end_loop2
    slli x26, x22, 2 #i*4
    add x27, x24, x26 #array[i] address
    lw x28, 0(x27) #load array[i]
    add x23, x23, x28 #sum += array[i]
    addi x22, x22, 1
    beq x0, x0, loop2



end_loop2:
    
end_loop:   