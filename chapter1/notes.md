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

## 1.6,

So I am thinking... Will it just return the function call? It's being sent
through something that is not a special form. That might mean that it would
react differently, but I would have to find somewhere in the text that says that
special forms don't act like procedures. Your intuition tells you that there is
no difference.

So I cheated and ran the calculations myself and it recurs forever, and it hits
a recusrion limit.

I think the reason has something to do with applicative order. The hint is in
the question -- Eva Lu Ator. This might explain how it happens, but why would
this function call recur forever, while the regular if does not do that?

When you call new-if, it sends the precise? function, the guess integer, and the
root-iter function.

I think the problem is that it never iterates. You are just calling root-iter
with the same arguments over and over again.

Actually, it does get to the correct value. Why?

So I looked on stack overflow. The short answer is that it recurs because its a
function call, and applicative order evaluation evaluates all the items.
However, you are effectively running two recursive functions. new-if recurs on
sqrt-iter, and sqrt-iter recurs on new-if.

## 1.7,

Somehow this is more efficient. The book isn't asking me to explain how it works
better, but it does.
