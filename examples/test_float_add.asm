; float addition

li x1, 1.234
li x2, 5.000
fadd.s x3, x1, x2
outr.s x3

li x1, 1.234
li x2, -5.000
fadd.s x3, x1, x2
outr.s x3

li x1, 1234.0
li x2, -5000.0
fadd.s x3, x1, x2
outr.s x3

li x1, 1000.0
li x2, -0.5
fadd.s x3, x1, x2
outr.s x3

halt
