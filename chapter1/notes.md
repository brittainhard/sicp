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

## 1.1.8, Black Box Abstractions

One can take everything and put it in a monolothic function, or one can separate
out the parts that can be reusable for other things. These procedures should
accomplish an identifiable task that can be used as a module.

A user should not have to worry about how the procedure they are using is
implemented. This is a black box abstraction. Any procedure that computes a
result is valid in terms of the person using the module.

# 1.2.0, Procedures and the Processes they Generate

Examining common shapes, like chess tactics, that are used. One must know these
to become an expert programmer.

## 1.2.1, Linear Recursion and Iteration

The first factorial example is linearly recursive, but the fact-iter example is
merely iterative. This is because fact-iter does not grow and shrink, but rather
acts like a stack, putting function call on top of function call.

The main difference is that we have to keep track of where the linear recursion
function is, but we can stop and resume the linear-iterative process at any time
and not cause errors.

Where does it talk about registry machines and stacks? I'm not sure...

There is a principle difference between a recursive process and a recursive
procedure. If a process is recursive, that means that the procedure definition
refers to the procedure itself. When we talk about how a process is a linear
recursive process, we are talking about how the process evilves.

Fact-iter is a recursive procedure that results in an iterative process. The
state of the procedure is captured perfectly by the three variables passed to
it. The interpreter needs only to follow those three variables.

This is confusing though, because in languages like C, a recursive procedure
uses more memory as the number of procedure calls increases. Apparently this is
why other languages have to use looping constructs to avoid this issue.

The chapter 5 implementation of scheme will not have this problem, since it
implements tail recursion.

Footnote: Iterative procedures can be represented by register machines, but
recursive process requires a stack. 

## 1.2.2, Tree Recursion

I don't think it's the case that you are always using tree recursion for fib
numbers, just in this example, since it runs two separate fib calculations.

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

## 1.9,

The first one is linear recursive, the second one is iterative. I can't make the
functions work, since dec and inc rely on +, and that ends up surpassing allowed
recursion depth.

According to some guy on the internet, it's easy to tell because the first uses
a sub-expression as its return statement, whereas the second merely returns
itself. When you do try to expand it, it just doesn't look right. 

## 1.10,

I hate this problem.

