/*
*   Ownership message check test
*/

.section ".text.init"
.globl _start
_start:

  # Init trap_vector
  la t0, trap_vector
  csrw mtvec, t0

  # Setup S-mode

  li a1, ((MSTATUS_MPP & ~(MSTATUS_MPP<<1)) * 1)
  csrs mstatus, a1
  csrr t2, mepc
  addi t2, t2, 4
  csrw mepc, t2
  mret
  
  # Linear instruction in S-mode
  addi t2, zero, 15
  add t0, t0, t2
  addi t1, t0, -2

  # Check indirect branch message
  ecall

  j end

trap_vector:
  
  csrr t2, mepc
  addi t2, t2, 4
  csrw mepc, t2
  mret

end:
  j .
