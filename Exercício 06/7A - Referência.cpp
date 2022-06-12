// Diego Souza Lima Marques - TIA: 32039921
// Atividade 7.A - Passagem por referência - Linguagem C++

#include <iostream>
using namespace std;

int n;

void p(int &k)
{
	n = n + 1;
	k = k + 4;
	cout << n << " ";
}

int main() 
{
	n = 0;
	p(n);
	cout << n << " ";
}