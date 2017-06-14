;AUTOR:Gonzalez Roman, Diego
;FECHA: 1 de Junio 2017 
;RECURSOS NECESARIOS: Simulador 8085
;PRUEBA: ExFC1.102
;Enunciado: Rutina en el simulador que cuando pulses un numero se represente en la pantalla, se repite hasta que pulses el 0 y el programa termine. Interrupcion 5.5

.ORG 1200H
EI ;interrupciones
LXI SP, 1200H ;pila
MVI A,00001000B ;mascara al acumulador
MOV B, A ;acumulador a B
CALL 2Ch

;Teclado
.ORG 2Ch ; Interrupción 5.5
IN 00
MOV B,A
IN 00H
MOV C,A

Bucle:
       RIM ;lectura mascara
	 ANI 0010000B ;and
	 JNZ Bucle ; si no es 0 bucle
	 ;JMP Bucle ; si 0 vuelve a bucle
	 ;CALL 0H ;rutina 044EH
MVI E, 0H ;cargar E
CMP E ;comparacion
;JZ Final ; si 0 final

Final:
	 RST 1
	 HLT










