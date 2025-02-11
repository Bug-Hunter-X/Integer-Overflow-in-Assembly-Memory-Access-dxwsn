# Integer Overflow in Assembly Memory Access

This repository demonstrates a common error in assembly language programming: integer overflow during memory access calculations.  The example highlights the risk of exceeding the maximum addressable memory without proper bounds checking.

The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version with appropriate overflow checks. This example serves as a reminder to always carefully consider potential integer overflows when dealing with memory addresses in assembly programming.  Failing to do so can lead to crashes, data corruption, and security vulnerabilities.