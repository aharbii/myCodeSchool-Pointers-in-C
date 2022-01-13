#include <stdio.h>
#include <stdlib.h>

int double_array(int *a, int size)
{
    int sum = 0;
    for (size_t i = 0; i < size; i++)
    {
        a[i] *= 2;
    }
}

int main()
{
    int a[] = {1, 2, 3, 4, 5};
    int size = (sizeof(a) / sizeof(a[0]));
    double_array(a, size);
    for (int i = 0; i < size; i++)
    {
        printf("A[%d] = %d\n", i, a[i]);
    }
    
    return 0;
}