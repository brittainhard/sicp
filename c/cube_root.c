/**
 * Place thinking, the place. That place where I took Cricket to go to the
 * bathroom shows up in my thoughts when I am thinking about academic papers.
 * Another office in the same place closer to Cooper comes up when I think about
 * IQ tests. The outer garden area in the center of the building makes me think
 * of Shakespeare histories.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define PRECISION 0.001

double
square(double x)
{
    return x * x;
}

double
cube(double x)
{
    return x * x * x;
}

bool
is_precise(double guess, double previous)
{
    if(abs(guess - previous) < PRECISION) {
        return true;
    } else {
        return false;
    }
}

double
improve(double guess, double x)
{
    return ((x / square(guess)) + (2 * guess)) / 3;
}

double
root_iter(double guess, double previous, double x)
{
    if(is_precise(guess, previous)) {
        return guess;
    } else {
        return root_iter(improve(guess, x), guess, x);
    }
}

int
main(int argc, char *argv[])
{   
    printf("%f\n", cube(2));
    printf("%d\n", is_precise(2, 2));
    return 0;
}
