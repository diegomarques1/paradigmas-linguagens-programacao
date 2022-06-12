// Diego Souza Lima Marques - TIA: 32039921
// Atividade 7.C - Passagem por valor - Linguagem C

#include <stdio.h>

int a[10];
int n;

void p(int b)
{
	printf("%d ", b);
	n = n + 1;
	printf("%d ", b);
	b = b + 5;
}

int main(void) 
{
	a[1] = 10;
	a[2] = 20;
	a[3] = 30;
	a[4] = 40;
	n = 1;
	p(a[n+2]);
	printf("\n");
	for (int i = 1; i <= 4; i++)
	{
		printf("%d ", a[i]); // printf(a);
	}
	return 0;
}
