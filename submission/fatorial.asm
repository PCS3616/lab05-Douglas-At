.data
N:    .word 5       
RES:  .word 0       

.text
.globl main
main:
    
    la   $t1, N      
    lw   $t0, 0($t1) 

    
    li   $t2, 1      
    li   $t3, 1      

loop:
    ble  $t0, $t3, end   
    mul  $t2, $t2, $t3   
    addi $t3, $t3, 1     
    j    loop            

end:
    
    la   $t1, RES
    sw   $t2, 0($t1)

    
    li   $v0, 10
    syscall
