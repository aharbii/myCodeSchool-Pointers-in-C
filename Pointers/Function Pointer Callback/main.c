#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int compare(int a, int b)
{
    if (a > b)
    {
        return 1;
    }
    else
    {
        return -1;
    }
}

int absolute_compare(int a, int b)
{
    if (abs(a) > abs(b))
    {
        return 1;
    }
    else
    {
        return -1;
    }
}

void bubble_sort(int *a, int size, int (*compare)(int, int))
{
    int temp;
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < (size - 1); j++)
        {
            if (compare(a[j], a[j + 1]) > 0)
            {
                temp     = a[j];
                a[j]     = a[j + 1];
                a[j + 1] = temp;
            }
        }
        
    }
    
}

int main()
{
    int a[] = {-31, 22, -1, 50, -6, 4};
    bubble_sort(a, 6, absolute_compare);
    for (int i = 0; i < 6; i++)
    {
        printf("a[%d] = %d\n", i, a[i]);
    }

    return 0;
}