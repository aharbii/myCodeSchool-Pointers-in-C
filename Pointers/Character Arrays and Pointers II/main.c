#include <stdio.h>
#include <stdlib.h>

void print(char *c)
{
    while (*c != '\0')
    {
        printf("%c", *c);
        c++;
    }
    printf("\n");
}

int main()
{
    char c[20] = "Hello";
    c[0] = 'A';
    print(c);
    return 0;
}