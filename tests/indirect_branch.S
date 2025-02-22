/*
*   Indirect branch message check test
*/

.section ".text.init"
.globl _start
_start:

  # Init trap_vector
  la t0, trap_vector
  csrw mtvec, t0

  li t0, 0
  li t1, 123

  # First indirect message
  ecall

  # Third indirect message( mret is second )
  sw t0, 18(t1)

  j end

trap_vector:
  addi t0, t0, 5
  
  csrr t2, mepc
  addi t2, t2, 4
  csrw mepc, t2
  mret

end:
  j .

