; ---------------------------------
;  AUTHOR: D.G.Roman
;  DATE: 22 February 2017
;  ASSIGNMENT: P1
;  REVISION: 1.1
; ---------------------------------
.ORG 100AH
; ------------
;  Ejercicio 1
; ------------
MVI A, 1H
MVI B, 2H
MVI C, 3H
MVI D, 4H
MVI E, 5H
MVI H, 6H
MVI L, 7H
; ------------
;  Ejercicio 2
; ------------
MOV M, A
; ------------
;  Ejercicio 3
; ------------
INX H
MOV M, B
INX H
MOV M, C
INX H
MOV M, D
INX H
MOV M, E
; ------------
;  Ejercicio 4
; ------------
SHLD 60FH
; ------------
;  Ejercicio 5
; ------------
XCHG
MOV M, A
; ------------
;  Ejercicio 6
; ------------
LHLD 60FH
MOV M, C
; ------------
;  Ejercicio 7
; ------------
STAX B
MVI A, 44H
STAX D
HLT 
