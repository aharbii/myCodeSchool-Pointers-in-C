#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a = 1025;
    int *p = &a;
    printf("size of integer is %lu bytes\n", sizeof(int));
    printf("Address = %d, value =  %d\n", p, *p);
    printf("Address = %d, value =  %d\n", p+1, *(p+1));
    
    printf("\n=========================================\n");
    char *p0;
    p0 = (char *)p;
    printf("size of char is %lu bytes\n", sizeof(char));
    printf("Address = %d, value = %d\n", p0, *p0);
    printf("Address = %d, value =  %d\n", p0+1, *(p0+1));
    printf("\n=========================================\n");
    // Void Pointer - Genric pointer
    void *p1;
    p1 = p;
    printf("Address = %d\n", p1);
    return 0;
}