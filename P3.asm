;AUTOR:Gonzalez Roman, Diego 
;FECHA: 1 de Marzo 2017 
;RECURSOS NECESARIOS:  
;Simulador 8085 
;PRUEBA: Practica 3



.DATA 1500h    ;Directiva de compilador
 dB 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h
.ORG 1000h     ;Directiva de compilador

LXI H,1500h    ;Carga el dato al registro H
MVI B,9h       ;Mueve el dato en al registro B
etiq: ADD M	   ;Suma el contenido de M a A
INR L          ;Incremento de posición
DCR B          ;Reducción del valor de B
CPI FFh        ;Limite establecido,si no se alcanza el bucle se repite desde el punto indicado
JNZ etiq       ;Salto de vuelta a etiq en caso de que no se alcance el valor anteriormente indicado

STA 1100h      ;Envio de los datos a la direccion de memoria indicada
HLT 		   ;Fin                       
