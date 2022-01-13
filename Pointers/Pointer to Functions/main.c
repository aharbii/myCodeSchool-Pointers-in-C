#include <stdio.h>
#include <stdlib.h>

int add(int a, int b)
{
    return (a + b);
}

int main()
{
    int c;
    int (*p)(int, int);
    p = &add; // add == &add  --> name of the function contains it's address
    c = (*p)(2, 3); // also == p(2, 3)
    printf("&add = 0x%X\n", add);
    printf("p = 0x%X\n", p);
    printf("%d\n", c);
    return 0;
}