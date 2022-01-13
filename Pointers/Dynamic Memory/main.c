#include <stdio.h>
#include <stdlib.h>

int total;
int square(int x)
{
    return x * x;
}

int square_of_sum(int x, int y)
{
    int z = square(x + y);
    return z;
}

int main()
{
    int a = 4;
    int b = 8;
    total = square_of_sum(a, b);
    printf("output = %d\n", total);
}