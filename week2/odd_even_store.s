

ARRAY: .word 10,50,41,55,30,20,11,5,100,77
LOCA: .word 0,0,0,0,0,0
LOCB: .word 0,0,0,0,0,0

.TEXT 
    LDR R0,=ARRAY
    LDR R1,=LOCA
    LDR R2,=LOCB
    MOV R4,#10
    

L1: LDR R3,[R0],#4
    AND R7,R3,#1
    CMP R7,#1
    BEQ L2
    STR R3,[R1],#4
    SUB R4,R4,#1
    CMP R4,#0
    BNE L1
    SWI 0X11

L2: STR R3,[R2],#4
    SUB R4,R4,#1
    CMP R4,#0
    BNE L1
    SWI 0X11
