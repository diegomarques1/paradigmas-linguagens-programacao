// Diego Souza Lima Marques - TIA: 32039921
// Atividade 7.C - Passagem por valor - Linguagem C

#include <iostream>
using namespace std;

int a[10];
int n;

void p(int &b)
{
	cout << b << " ";
	n = n + 1;
	cout << b << " ";
	b = b + 5;
}

int main() 
{
	a[1] = 10;
	a[2] = 20;
	a[3] = 30;
	a[4] = 40;
	n = 1;
	p(a[n+2]);
	cout << "\n";
	for (int i = 1; i <= 4; i++)
	{
		cout << a[i] << " "; // printf(a);
	}
}
