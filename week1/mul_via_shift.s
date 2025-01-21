;multiplication using left shift
.TEXT
;CASE 1 WHEN R1 IS 25
MOV R1,#25
MOV R2,R1,LSL #4



;case 2 when R1 IS 16 
MOV R1,#16
MOV R2,R1,LSL #4
MOV R3,R1,LSL #3
ADD R4,R3,R1
ADD R5,R4,R2


