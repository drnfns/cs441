#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 10, day: 8))

= functions

sets give us a way to formalize the concept of a function. take two non-empty
sets for example, $A$ and $B$. a *function* $f$ is an assignment of _exactly
one_ element of set $B$ to each element of set $A$.

\
we write $f: A -> B$ to denote that $f$ is a function from set $A$ to set $B$;
and we say that $f(a) = b$ if the element $a in A$ is mapped to the unique
element $b in B$ by the function $f$.

== defining a function

a function can be defined in a number of ways:

\
+ explicitly
  - $f: ZZ -> ZZ$
  - $f(x) = x^2 + 2x + 1$
+ using a programming language
  - ```ts
    const min: number = (x: number, y: number) => x < y ? x : y
    ```
  - ```c
    int max(int x, int y) = {x > y ? return x : return y}
    ```
+ using a relation
  - let $S = {"Anna", "Brian", "Christine"}$
  - let $G = {A, B, C, D, F}$
  - let $f : S -> G$.\ $f("Anna") = C$\ $f("Brian") = A$\ $f("Christine") = A$

== terminology
- the *domain* of a function is the set that a function maps _from_
  ($f: bold(A) -> B$).
- the *codomain* of a function is the set that a function maps _to_
  ($f: A -> bold(B)$).
- take the function $f(a) = b$. $b$ is the *image* (output) of $a$, and $a$ is
  the *preimage* (input) of $b$.
- the *range* of a function $f: A -> B$ is the set of _all images_ of elements
  of a (or all possible outputs).

== types of functions

=== injective
a *one to one*, or *injective* function is a function that never assigns the
same image to two different elements. a function is *injective* if and only if:

\
$
  forall x, y in A thick [(f(x) = f(y)) -> (x = y)]
$

=== surjective
we call a function $f : A -> B$ *onto*, or *surjective*, if and only if for
every element $b in B$, there is some element $a in A$ such that $f(a) = b$. we
can write this formally:

\
$
  forall y in B, exists x in A thick [f(a) = b]
$

=== bijective
functions that are both _injective_ and _surjective_ are called *bijections* (or
*bijective*). you can formulate the formal definition yourself; it is just the
two definitions above conjuncted.

\
bijections are the only functions that can have an *inverse*. the
_injective-ness_ make sure that for each preimage of the inverse function, there
is *only one* image; the _surjective-ness_ makes sure that there is at least one
image for preimage, so the entire domain must have a corresponding output.

\
in short: if $f: A -> B$ is a bijection, then the inverse of $f$ is the function
$f^(-1) : B -> A$ that assigns to each $b in B$ the unique value $a in A$ such
that $f(a) = b$.

== function composition
functions can be composed with one another. given a function $f : A -> B$ and
$g : B -> C$, the *composition* of $f$ and $g$, is denoted as $g compose f$, and
$(g compose f)(x) = g(f(x))$.

\
for two functions to compose, the codomain of the inner function ($f(x)$) must
be a subset of the domain of the outer function ($g(x)$).

== important functions

=== floor
the *floor* function maps a real number $x in RR$ to the _largest_ integer
$y in ZZ$ so that $y$ is _not greater_ than $x$. The *floor* of $x$ is denoted
as $floor(x)$.

=== ceiling
The ceiling function maps a real number $x in RR$ to the _smallest_ integer
$y in ZZ$ so that $y$ is _not less_ than $x$. The ceiling of x is denoted
$ceil(x)$.
