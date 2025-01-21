.text
	MOV R0, #0xF0  
	MOV R1, #32          
	MOV R2, #0           
	MOV R3, #0           

L1:
	ANDS R4, R0, #1      
	CMP R4, #0           
	ADDNE R2, R2, #1     
	ADDEQ R3, R3, #1     
	MOV R0, R0, LSR #1       
	SUBS R1, R1, #1      
	BNE L1       

check_parity:
	ANDS R4, R2, #1      
	BEQ L3     
	        

L3:	
	SWI 0X011

