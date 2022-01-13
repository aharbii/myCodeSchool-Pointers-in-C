#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char c[20];
    c[0] = 'J';
    c[1] = 'o';
    c[2] = 'h';
    c[3] = 'n';
    c[4] = '\0';
   
    int len = strlen(c);
    printf("%s\n", c);
    printf("len = %d\n", len);
    return 0;
}