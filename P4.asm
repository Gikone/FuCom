.data 1500h
 db 8h,5h,6h,0h,56h,9h,46h,15h,26h,55h,02h,36h,26h,84h,15h,54h,74h,95h,06h
.org 1000H
LXI H, 1500H
MVI E, 9H
MOV C, M
INR L
bucle:MOV B, M
INR L
CALL Compara
DRC E
MOV A, E
CPI 0H
JNZ bucle
MOV A, B
STA 1H
MVI D, 1H ;se guarfa en 1H
MVI E, 9H
MVI B, 0H
loop:MOV B,M
INR L
CALL compara
DCR E
MOV A, E
CPI 0H
JNZ loop
LDA 1H
SUB B
HLT

compara:
	MOV A, B
	CMP C
	JC loops
	MOV C, B
	loops:MOV B, C
	RET
