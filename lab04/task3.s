bubble_sort:
    beqz a0, done # if (n == 0) return
    beqz a1, done # if (len == 0) return
    li t0, 0 #i = 0
outer_loop:
    bgeu t0, a1, done # if (i >= len) return
    slli t1, t0, 2 # t1 = i * 4
    add t2, a0, t1 # t2 = arr[i]
    lw t3, 0(t2) # t3 = arr[i]
    addi t4, t0, 0 # j = i


inner_loop:
    bgeu t4, a1, outer_loop # if (j >= len) break inner loop
    slli t5, t4, 2 # t5 = j * 4
    add t6, a0, t5 # t6 = arr[j]
    lw t7, 0(t6) # t7 = arr[j]
    bge t3, t7, no_swap # if (arr[i] >= arr[j]) continue

    sw t7, 0(t2) # arr[i] = arr[j]
    sw t3, 0(t6) # arr[j] = arr[i]
    addi t3, t7, 0 # t3 = arr[j]
no_swap:
    addi t4, t4, 1 # j++
    j inner_loop
outer_loop:
    addi t0, t0, 1 # i++
    j outer_loop

done:
    ret

