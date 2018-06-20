 .text
#################################################################################
#本程序实现512开始的16个字单元的降序排序,此程序可在mars mips仿真器中运行
#运行时请将Mars Setting中的Memory Configuration设置为Compact，data at address 0
#
#################################################################################
 .text
sort_init:
 addi $s0,$0,-1
 addi $s1,$0,0
 sw $s0,512($s1)
 lw $s3,512($s2)     
 add $s2,$s0,$s3
 slt $t0,$s0,$s3
 beq $t0,$zero,next   #branch
 nop                  
 next:
 beq $s0,$zero,next  #no branch

 bne $s0,$zero,next1  #branch
 nop
next1:
  bne $t0,$zero,next1  #branch
   addi   $v0,$zero,10         # system call for exit
 syscall                  # we are out of here.   
