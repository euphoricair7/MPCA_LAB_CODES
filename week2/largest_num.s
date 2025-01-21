;Write a program to find the largest number from a given set of numbers.(Unsorted Array)

.data 
A:	.word 10,50,41,55,30,20,11,5,100

.text
LDR R0,=A
LDR R1, [R0], #4		
MOV R3, #8

L1:
	LDR R2, [R0], #4	
	CMP R1, R2	
	BGT L2	
	MOV R1, R2	

L2:
	SUBS R3, R3, #1
	BNE L1
