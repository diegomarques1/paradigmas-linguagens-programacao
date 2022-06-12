// Diego Souza Lima Marques - TIA: 32039921
// P1 - Questão 01
// Passagem de parâmetros por valor x referência

#include <iostream>

using namespace std;

// ambas as funções pegam o argumento passado e alteram para -1
void passagemValor(int valor)
{
  valor = -1;
  cout << "\nSou a função com passagem de parâmetro por valor.\n"
    << "Criei uma cópia com o valor da variável passada como argumento e alterei seu conteúdo para -1.\n"
    << "Essa alteração é efetiva apenas no escopo local da função.\n";
}

void passagemReferencia(int &valor)
{
  valor = -1;
  cout << "\nSou a função com passagem de parâmetro por referência.\n" 
    << "Recebi a variável original como argumento e alterei seu valor para -1, visto que foi utilizado o operador &.\n" 
    << "Esse operador garante que a função vai olhar para o endereço de memória do argumento passado,  referenciando o endereço da variável original.\n" 
    << "Portanto, qualquer alteração é efetiva na variável original, e não só no escopo local da função.\n";
}

int main() 
{
  setlocale(LC_ALL, "pt_BR.UTF-8");
  int var;
  cout << "Digite um valor de 0 a 10 para ser atribuído à variável 'var': ";
  cin >> var;
  while (var < 0 || var > 10)
    {
      cout << "\nValor inválido. Por favor, digite um valor entre 0 e 10: ";
      cin >> var;
    }
  cout << "\n-> Passagem por valor - copia conteúdo, não altera original.\n";
  passagemValor(var);
  cout << "Após a passagem por valor, na main(), 'var' continua com o valor original digitado: " << var << "\n\n";
  cout << "-> Passagem por referência (&) - referencia o endereço do parâmetro, altera original.\n";
  passagemReferencia(var);
  cout << "Após a passagem por referência, na main(), a alteração feita dentro da função continua e impacta no conteúdo de 'var': " << var;
}