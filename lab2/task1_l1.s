bne x22, x23, else
add x19, x20, x21
beq x0, x0, end
else: sub x19, x20, x21
end:


#imm[12]    imm[10:5]  src2       src1        fun3  imm[4:1]   imm[11]   opcode
# 0          000000     10111      10110       000   0110       0         1100011