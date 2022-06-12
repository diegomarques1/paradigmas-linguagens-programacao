//Programa C
#include <stdio.h>

int y = 4;

int f(int *x)
{
	*x=1;
	return *x+y;
}

int main(void) {
    int x=0,z=0,*p;
    p = &x;
    printf("%d %d %d\n",x,y,z);
    z = f(p);
    printf("%d %d %d\n",x,y,z);
	return 0;
}
