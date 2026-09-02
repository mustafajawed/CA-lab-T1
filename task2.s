.text
.global main
main:
    li x1 , 1
    li x2 , 2
    li x3 , 3
    li x4 , 4

    li x20 , 1 #x = 1
    li x22 , 20 #b = 20
    li x23 , 30 #c = 30

    beq x20 , x1 , case1
    beq x20 , x2 , case2
    beq x20 , x3 , case3
    beq x20 , x4 , case4
    beq x0 , x0 , default


    case1:
       add x21 , x23 , x24
       beq x0 , x0 , end
    case2:
       sub x21 , x23 , x24
       beq x0 , x0 , end
    case3:
        slli x21, x22, 1
       beq x0 , x0 , end
    case4:
       srai x21, x22, 1
       beq x0 , x0 , end

