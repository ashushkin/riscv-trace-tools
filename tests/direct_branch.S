/*
*   Direct branch message check test
*/

.section ".text.init"
.globl _start
_start:

  li t0, 10
  li t1, 0
  # t2 = 0 or t2 != 0
  csrr t2, mhartid

  # Branch if t2 = 0
  beq t2, t1, 1f
  # Else t1 = 10
  addi t1, t1, 10

1:
  # t1 = 10 or t1 = 0 and t0 = 10.
  # If t1 = 10, then branch taken, else t1++
  beq t0, t1, 2f
  addi t1, t1, 1
  j 1b

2:
  # If random t2 + 1 and random register equal, then brach is taken
  # Else set t2 = 0 and t4 = 0. Next branch is taken
  addi t2, t2, 1
  beq t2, t4, 3f
  addi t4, zero, 0
  addi t2, zero, 0
  j 2b

3:

end:
  j .

