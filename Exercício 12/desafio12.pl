/* Diego Souza Lima Marques - 32039921 */
/* Desafio 12 */

/* M é o maior entre três números A, B e C */
maior(A,B,C,M):-(A>=B,A>=C,M is A, !);(B>=A,B>=C,M is B, !);(C>=A,C>=B,M is C).

/* Pensei no ! como um 'break' caso a condição seja verdadeira */

/* Consultas realizadas:
maior(2,3,4,M) -> M = 4 
maior(10,2,4,M) -> M = 10
maior(5,8,1,M) -> M = 8
maior(6,6,6,M) -> M = 6
maior(9,6,3,9) -> true */

/* X1 e X2 são as raízes da equação de segundo grau de coeficientes A, B, C */
raiz(A,B,C,X1,X2):-Delta is B*B-4*A*C,Delta>=0,X1 is (-B-sqrt(Delta))/(2*A),X2 is (-B+sqrt(Delta))/(2*A),A\=0.

/* Referência de sqrt(): https://www.swi-prolog.org/pldoc/man?function=sqrt/1 */

/* Consultas realizadas:
raiz(1,-1,-12,X1,X2) -> X1 = -3.0, X2 = 4.0
raiz(4,-4,24,X1,X2) -> causou erro quando utilizou um valor de delta negativo, logo, utilizou-se delta>=0
raiz(4,-4,-24,X1,X2) -> X1 = -2.0, X2 = 3.0 */



/* Objetivo: definir começo e final da intersecção */
comecoIntervalo(X1,X3,Xi):-(X1>=X3,Xi is X1);(X3>X1,Xi is X3).
finalIntervalo(X2,X4,Xf):-(X2>=X4,Xf is X4);(X4>X2,Xf is X2).

/* (X5,X6) representa os valores de um intervalo que é a intersecção dos intervalos unidimensionais (X1,X2) e (X3,x4) */
interseccao(X1,X2,X3,X4,X5,X6):-(X2<X3;X4<X1), X5 is 0, X6 is 0, !.
interseccao(X1,X2,X3,X4,X5,X6):-comecoIntervalo(X1,X3,Xi), finalIntervalo(X2,X4,Xf), X5 is Xi, X6 is Xf.
                                
/* Para funcionar nessa implementação, utilizar intervalos na ordem crescente. Exemplos: (0,2), (2,7), (-2,4), etc. */

/* Consultas realizadas:
interseccao(0,5,3,6,X5,X6) -> X5 = 3, X6 = 5 -> (0,5) I (3,6) = (3,5)
interseccao(2,5,1,4,X5,X6) -> X5 = 2, X6 = 4 -> (2,5) I (1,4) = (2,4)
interseccao(0,2,4,6,X5,X6) -> X5 = X6, X6 = 0 -> (0,2) I (4,6) = (0,0) */