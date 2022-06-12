/* Diego Souza Lima Marques - 32039921 */
/* Desafio 11 - Parte 2 */

/* Esqueletos dos fatos logo abaixo:
n1(Tia,Nota1,Disciplina).
n2(Tia,Nota2,Disciplina).
participacao(Tia,NotaPart).
sub(Tia,Nota,Disciplina).
pf(Tia,Nota,Disciplina).
carga(Disciplina,Aulas).
faltas(Tia,Faltas,Disciplina). */

/* plp = Paradigmas de Linguagens de Programação */
n1(32039921,9.7,plp).
n2(32039921,7.5,plp).
participacao(32039921,0.9).
sub(32039921,0,plp).
pf(32039921,0,plp).
carga(plp,80).
faltas(32039921,8,plp).

/* Foram consideradas: MI >= 6, MF >= 5, frequência >= 75% 
Regras: */
fazSub(Tia,Disciplina):-n1(Tia,N1,Disciplina),n2(Tia,N2,Disciplina),(N1=<0;N2=<0).
colocarSub(Tia,Nota,Disciplina):-fazSub(Tia,Disciplina),sub(Tia,N,Disciplina),Nota is N.

/* Uma regra sem prova sub, uma regra com prova sub */
fazPF(Tia,Disciplina):-n1(Tia,N1,Disciplina),n2(Tia,N2,Disciplina),participacao(Tia,P),MI is ((N1+N2)/2)+P,MI<6.0.
fazPF(Tia,Disciplina):-n1(Tia,N1,Disciplina),n2(Tia,N2,Disciplina),participacao(Tia,P),fazSub(Tia,Disciplina),(colocarSub(Tia,N1,Disciplina);colocarSub(Tia,N2,Disciplina)),MI is ((N1+N2)/2)+P,MI<6.0.
colocarPF(Tia,Nota,Disciplina):-fazPF(Tia,Disciplina),pf(Tia,N,Disciplina),Nota is N.

frequencia(Tia,Disciplina):-faltas(Tia,F,Disciplina),carga(Disciplina,A),Faltas is F/A,Freq is 1-Faltas,Freq>=0.75.

/* Uma regra para PF e uma para sem PF */
aprovado(Tia,Disciplina):-n1(Tia,N1,Disciplina),n2(Tia,N2,Disciplina),participacao(Tia,P),MI is ((N1+N2)/2)+P,MI>=6.0,frequencia(Tia,Disciplina), !.
aprovado(Tia,Disciplina):-n1(Tia,N1,Disciplina),n2(Tia,N2,Disciplina),participacao(Tia,P),colocarPF(Tia,PF,Disciplina),MI is ((N1+N2)/2)+P,MF is (MI+PF)/2,MF>=5.0, frequencia(Tia,Disciplina).

/* Provavelmente, existem erros que não percebi. Além disso, não entendi muito bem como usar o operador !, então talvez isso tenha impactado. */