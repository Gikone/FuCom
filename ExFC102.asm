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
.ORG 2Ch ; Interrupcion 5.5


Bucle:
       RIM ;lectura mascara
	 ANI 0010000B ;and
	 JZ Bucle ; si 0 vuelve a bucle
	 CALL 044EH ;rutina 044EH
MVI E, 0H ;cargar E
CMP E ;comparacion
JZ Final ; si 0 final

Final:
	 RST 1
	 HLT
