# 1.1 The Elements of Programming

## 1.1.3, Evaluating combinations

To evaliate a combination, (1) evaluate the subexpressions of the combination,
then (2) apply the procedure that is the value of the leftmost subexpression to
the arguments (the values of the other subexpressions)(the operands).

So on 2, basically, apply the operator to the operands, and you are evaluating
the combinations.

Multiply can be a procedure. The * is a specal thing, but you are passing it
arguments...

If a combination has subexpressions, evauluate those first. Keep doing this
until you get to the lowest level? Okay. So that means evaluating one procedure
at a time, like in a tree. 

## 1.1.5, Applicative vs. Normal Order

Config from the fucking repo itself man...

## 1.1.7, Newton Roots

Math functions and computer functions are similar, because they specify a value
based on parameters. However, math functions do not describe how to get to a
value, only, or something...

Procedures must be effective. Math procedures just describe what something is
like. This is a difference between describing properties of things (math
functions) and procedures for getting things (computer functions). Declarative
vs. imperative. 

Newton root uses averages, and averages x with x/y. If we are talking about
applying this to other circumstances, can we just apply that average to all
sorts of things? We can do cube root too. What else can we apply it to?

# Exercises

## 1.5,

The result will be that applicative order evaluation will result in an infinite
loop, while normal order evaluation will return a 0.

This is because in applicative order evaluation, if there are nested
expressions, those nested expressions are evaluated before the top-level
expression is evaluated. Hence, it hits p, which only returns itself, and runs
forever.

This is a test to determine what kind of interpreter, remember that.
