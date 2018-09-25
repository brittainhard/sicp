#include <stdio.h>

#define PRECISION 0.001

double
cube(double x)
{
    return x * x * x;
}

int
main(int argc, char *argv[])
{   
    printf("%f\n", cube(2.0));
    return 0;
}
