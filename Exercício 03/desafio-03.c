// Diego Souza Lima Marques - TIA: 32039921
// Desafio 3

#include <stdio.h>
#include <stdlib.h>

void popularMatriz(int m, int n, int **matriz)
{
  for (int i = 0; i < m; ++i)
    {
      for (int j = 0; j < n; ++j)
        {
          printf("Matriz[%d][%d] = ", i + 1, j + 1);
          scanf("%d", &matriz[i][j]);
        }
    }
}

void printarMatriz(int m, int n, int **matriz)
{
  for (int i = 0; i < m; ++i)
    {
      for (int j = 0; j < n; ++j)
        {
          printf("%i ", matriz[i][j]);
        }
      printf("%c", '\n');
    }
}

int main() 
{
  int **matrizA, **matrizB, **matrizM, dim1 = 3, dim2 = 1;
  matrizA = (int **) malloc(dim1 * sizeof(int));
  for (int col = 0; col < dim1; col++)
    {
      matrizA[col] = (int*) malloc(sizeof(int));
    }
  matrizB = (int **) malloc(dim2 * sizeof(int));
  for (int col = 0; col < dim2; col++)
  {
    matrizB[col] = (int*) malloc(sizeof(int));
  }
  popularMatriz(dim1, dim2, matrizA);
  printf("Matriz A = \n");
  printarMatriz(dim1, dim2, matrizA);
  popularMatriz(dim2, dim1, matrizB);
  printf("Matriz B = \n");
  printarMatriz(dim2, dim1, matrizB);
  matrizM = (int **) malloc(dim1 * sizeof(int));
  for (int col = 0; col < dim1; col++)
  {
    matrizM[col] = (int*) malloc(sizeof(int));
  }
  
  // Multiplicar as matrizes
  for (int i = 0; i < dim1; i++)
  {
    for (int j = 0; j < dim1; j++)
      {
        matrizM[i][j] = 0;
        for (int k = 0; k < dim2; k++)
          {
            matrizM[i][j] = matrizM[i][j] + matrizA[i][k] * matrizB[k][j];
            // printf("[%d][%d] = %d\n", i, j, matrizM[i][j]);
          }
      }
  }
  printf("Multiplicação das matrizes realizada!\n");
  printf("Matriz M =\n");
  printarMatriz(dim1, dim1, matrizM);
  for (int i = 0; i < dim2; i++)
    {
      free(matrizA[i]);
    } 
  free(matrizA);
  for (int i = 0; i < dim1; i++)
  {
    free(matrizB[i]);
  } 
  free(matrizB);
  for (int i = 0; i < dim1; i++)
  {
    free(matrizM[i]);
  } 
  free(matrizM);
	return 0;
}
