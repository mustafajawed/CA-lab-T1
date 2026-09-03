bne x22, x23, Else # if x22 != x23 then Else
add x19, x20, x21
beq x0, x0, Exit # if x0 == x0 then Exit

Else:
    sub x19, x20, x21 # x19 = x20 - x21
Exit: #




# Loop: slli x10, x22, 3
# add x10, x10, x25
# ld x9, 0(x10)
# bne x9, x24, Exit # if x9 != x24 then Exit
# addi x22, x22, 1; # x22 = x22 + 1
# beq x0, x0, Loop; # if x0 == x0 then Loop
# Exit:#