li x7, 0 #i=0
li x29, 0 #j=0
li x5 , 20 #upper bound a=20
li x6 , 30 #upper bound b=30
li x10, 0x0 # base address

outer_loop:
    bge x7, x5, end_outer
    li x29, 0 #j=0
inner_loop:
    bge x29, x6, end_inner
    add x28, x7, x29 #i+j
    slli x30, x29, 4 #j*16
    add x30, x30, x10 #base address + j*16
    sw x28 , 0(x30) #store i+j at array[j]
    addi x29, x29, 1
    beq x0, x0, inner_loop

end_inner:
    addi x7, x7, 1
    beq x0, x0, outer_loop
end_outer: