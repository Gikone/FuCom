;AUTOR:Gonzalez Roman, Diego
;FECHA: 1 de Junio 2017 
;RECURSOS NECESARIOS: Simulador 8085
;PRUEBA: ExFC1.102
;Enunciado: Rutina en el simulador que cuando pulses un numero se represente en la pantalla, se repite hasta que pulses el 0 y el programa termine. Interrupcion 5.5

.ORG 1200H

MVI A, 08H ; Inicializa A, a mascara de interrupciones
MVI B, FFH ; Inicializa B
MVI C, FFH ; Inicializa C
LXI SP, 1200H ;pila
REP: 
	EI
	RIM
	CALL 2CH 
	JMP REP


;Teclado
.ORG 2CH ; Interrupción 5.5
IN 00
CPI 3AH
SUI 30H
CPI 30H
HLT












