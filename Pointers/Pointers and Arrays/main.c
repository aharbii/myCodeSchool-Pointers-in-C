#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a[] = {2, 4, 5, 8, 1};
    for (int i = 0; i < 5; i++)
    {
        printf("Address = %d\n", &a[i]);
        printf("Address = %d\n", a+i);
        printf("value   = %d\n", a[i]);
        printf("value   = %d\n", *(a + i));
    }
    
    return 0;
}