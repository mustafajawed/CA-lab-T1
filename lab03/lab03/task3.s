li x2, 5
li x3, 10 # x3 =10 


sw x2, 0x120(x0) # 
sw x3, 0x124(x0) # 

addi x10, x0, 0x100 #v[]
addi x11, x0, 8 # k

jal x1, swap  # jump to x1, swap and save position to ra

j exit

swap:
    slli x11, x11, 2
    add x10, x10, x11

    lw x7, 0(x10) #v[k]
    lw x8, 4(x10) #v[k+1]
    
    
    sw x8, 0(x10) 
    sw x7, 4(x10) 


    jalr x0, 0(x1)
exit:



    