// Diego Souza Lima Marques - TIA: 32039921
// Atividade 7.A - Passagem por valor - Linguagem C

#include <stdio.h>

int n;

void p(int k)
{
	n = n + 1;
	k = k + 4;
	printf("%d ", n);
}

int main(void) 
{
	n = 0;
	p(n);
	printf("%d ", n);
	return 0;
}
