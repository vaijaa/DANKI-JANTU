 AREA SUM, CODE, READONLY
	ENTRY
	LDR R0, =0X0000000C ;LOAD THE DIVIDEND
	LDR R1, =0X00000005 ;LOAD THE DIVISOR
	MOV R2, #0 ;INITIATE THE QUOTIENT REGISTER WITH 0
loop
	CMP R0, R1 ;CHECK IF DIVIDENT IS LESS THAN DIVISOR
	BLT not_divisible ;BRANCH TO END THE PROGRAM APNE KO PROPER FRACTIONS KA DIVISION NAI KARNA BHIDU  
	SUBS R0, R0, R1 ; SUBTRACT DIVISOR FROM DIVIDEND
	CMP R0, #0 ;SUBTRACTED VALUE AGAR 0 YA NEGATIVE HAI TOH KATT LE YAHA SE
	BLT not_divisible ;BLT MATLAB..."BRANCH IF LESS THAN"
	ADD R2, R2, #1 ;QUOTIENT INCREMENT KAR
not_divisible
	END
;R2 HOLDS THE QUOTIENT VALUE
; BASICALLY METHOD YE HAI KI TUM JITNI BAAR DIVISOR KO DIVIDENT SE SUBTRACT KAR SAKTE HO UNTIL U GET A LEAST VALUE JISSE AGAR DIVIDENT SUBTRACT KARO TOH
;NEGATIVE VALUE AAYE, WO UTNI BAAR QUOTIENT INCREMENT KAREGA, WAHEE QUOTIENT HAI 