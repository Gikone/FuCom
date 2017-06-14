;AUTOR:Gonzalez Roman, Diego
;FECHA: 1 de Junio 2017 
;RECURSOS NECESARIOS: Simulador 8085
;PRUEBA: ExFC1.102
;Enunciado: Rutina en el simulador que cuando pulses un numero se represente en la pantalla, se repite hasta que pulses el 0 y el programa termine. Interrupcion 5.5

.ORG 1200H
EI ;interrupciones
MVI A, 08H ; Inicializa A, a mascara de interrupciones
MVI B, FFH ; Inicializa B
MVI C, FFH ; Inicializa C
LXI SP, 1200H ;pila
Bucle:
       RIM ;lectura mascara
	 ;ANI 0010000B ;and
	 CPI 3AH
	 RNC
	 CPI 30H
	 ;JZ Final ; si 0 final
	 JC Bucle 
	 ;JNZ Bucle ; si no es 0 bucle
	 ;JMP Bucle ; si 0 vuelve a bucle
	 ;CALL 0H ;rutina 044EH
;MVI E, 0H ;cargar E
;CMP E ;comparacion

CALL 2Ch

;Teclado
.ORG 2Ch ; Interrupción 5.5
IN 00
CPI 30H
RNC
;SUI 30H

Final:
	; RST 1
	 HLT










