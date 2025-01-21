;if two numbers equal then handle the case
;if two numbers are 
MOV R0,#25
MOV R1,#125
L: CMP R0,R1
    BEQ L1
    BLT L2
    BGT L3

L1: SWI 0X11

L2: SUB  R1,R1,R0
    B L

L3: SUB R0,R0,R1
    B L