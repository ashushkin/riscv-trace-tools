/*
*   Repeat branch message check test
*/

.section ".text.init"
.globl _start
_start:

  li t0, 10
  li t1, 0

# Take branch 10 times.
# Generate 10 N-Trace RepeatBranchMessage
1:
  addi t1, t1, 1
  addi s0, s0, 10
  bne t1, t0, 1b

  addi t0, zero, 0
  addi t1, zero, 0

# Take branch 100 times.
# Generate 100 N-Trace RepeatBranchMessage
2:
  addi t0, t0, 1
  addi t1, t1, 100
  bne t0, s0, 2b

end:
  j .

