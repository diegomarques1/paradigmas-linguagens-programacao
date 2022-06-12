/* Diego Souza Lima Marques - 32039921 */
/* Desafio 11 - Parte 1 */

/* Esqueletos dos fatos logo abaixo:
vacinadoCOVID(Pessoa,Vacina,Doses).
temDinheiro(Pessoa,Dinheiro).
precoPassagem(Pais,Preco).
precoEstadiaDia(Pais,Preco).
pedeVacina(Pais,Vacina,DosesMinimas). */

vacinadoCOVID(diego,pfizer,3).
vacinadoCOVID(marcos,coronavac,1).
vacinadoCOVID(arthur,astrazeneca,3).
temDinheiro(diego,10000).
temDinheiro(marcos,20000).
temDinheiro(arthur,6000).
precoPassagem(japao,5000).
precoEstadiaDia(japao,1000).
pedeVacina(japao,pfizer,2).
pedeVacina(japao,astrazeneca,2).
pedeVacina(japao,coronavac,2).
pedeVacina(japao,janssen,1).

/* Regra: */
podeViajar(Pessoa,Pais,Dias):-vacinadoCOVID(Pessoa,F,T),pedeVacina(Pais,F,Ex),T>=Ex,temDinheiro(Pessoa,D),precoPassagem(Pais,P),precoEstadiaDia(Pais,Es),S is Dias*Es+P,D>=S.

/* De acordo com o que foi especificado no problema, só calculei a passagem de ida,
e não coloquei a passagem de volta na lógica também.
- Queries realizadas:
podeViajar(diego,japao,3) -> true
podeViajar(diego,japao,6) -> false 
podeViajar(marcos,japao,1) -> false
podeViajar(marcos,japao,7) -> false
podeViajar(arthur,japao,1) -> true
podeViajar(arthur,japao,2) -> false */