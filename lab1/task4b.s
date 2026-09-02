li x1, 0x100      # x1 =0x100 
li x2, 0x200      # x2 =0x200 
li x3, 0x300      # x3 =0x300 

#for i=0

lb x4, 0(x1) 
lh x5, 0(x2)
add x6, x4, x5 # x6 = x4 + x5
sw x6, 0(x3)



#for i=1

lb x4, 1(x1) 
lh x5, 2(x2)
add x6, x4, x5 # x6 = x4 + x5
sw x6, 4(x3) 



#for i=2

lb x4, 2(x1) 
lh x5, 4(x2)
add x6, x4, x5 # x6 = x4 + x5
sw x6, 8(x3)



#for i=3

lb x4, 3(x1) 
lh x5, 6(x2)
add x6, x4, x5 # x6 = x4 + x5
sw x6, 12(x3)
