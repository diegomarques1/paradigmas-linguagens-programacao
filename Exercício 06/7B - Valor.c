// Diego Souza Lima Marques - TIA: 32039921
// Atividade 7.B - Passagem por valor - Linguagem C

#include <stdio.h>

int n;

void p(int k)
{
	printf("%d ", k);
	n = n + 10;
	printf("%d ", k);
	n = n + 5;
	printf("%d ", k);
}

int main(void) 
{
	n = 0;
	p(n+1);
	return 0;
}
