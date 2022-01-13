/* Call by reference */
#include <stdio.h>
#include <stdlib.h>

void increment(int a)
{
    /* Pass by value */
    a = a + 1;   // a copy of varibale a in main function, not it actually!
    printf("Increment a = %d\n", a);
    printf("Increment &a = %d\n", &a);
}

void pointer_increment(int *p)
{
    (*p) = (*p) + 1;   // a copy of varibale a in main function, not it actually!
    printf("Pointer Increment a = %d\n", *p);
    printf("Pointer Increment &a = %d\n", p);

}

int main()
{
    int a = 10;
    increment(a);
    pointer_increment(&a);
    printf("a = %d\n", a);
    printf("&a = %d\n", &a);
    return 0;
}