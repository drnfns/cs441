#import "conf.typ": conf, qed
#show: conf.with(
  id: "alj213",
  name: "Alex Jin",
  title: "hw_4",
  date: datetime(
    year: 2025,
    month: 9,
    day: 24,
  ),
)

= Problem 1
Show that the additive inverse, or negative, of an even number is an even number
using a direct proof.

== Answer

An even integer $n$ can be represented by $n = 2k$, where $k$ is any integer.
$
  -n & = -2k \
  -n & = 2(-k) \
$

Since $k$ is an integer, $-k$ is also an integer. let's call this integer $m$.

$
  -n & = 2(-k) \
  -n & = 2m wide && "(substitution)"
$

Since $-n$ can be written in the form $2m$, and both $m$ and $k$ is an integer,
$-n$ is an even number by definition. #qed

= Problem 2
Prove that if $n$ is a perfect square, then $n + 2$ is not a perfect square.

== Answer

A perfect square is defined as a number $k$ square. so, if $n$ is a perfect
square, $n$ can be represented as $n = k^2$, where $k$ is a non-negative
integer.

If $n + 2$ is also a positive square, it should be after $n$. We can find the
distance between the original number for it to be a perfect square:

$
  & (k + 1)^2 - k^2 \
  & = k^2 + 2k + 1 - k^2 \
  & = 2k + 1
$

This problem states that $n + 2$ is not a perfect square.

$
  2k + 1 & = 2 \
      2k & = 1 \
       k & = 0.5
$

However, $k$ have to be an integer for $n$ and $n+2$ to be perfect squares. This
supports the statement in the problem. #qed

= Problem 3
Prove that if $x$, $y$, and $z$ are integers and $x + y + z$ is odd, then at
least one of $x$, $y$, and $z$ is odd.

== Answer

By the contrapositive law, we negate the implication. We get: "If $x$, $y$, and
$z$ are integers and $x + y + z$ is _even_, then _for all of_ the possibilities
of $x$, $y$, and $z$, they are even."

We can represent an even number $n = 2k$ for an arbitrary integer $k$.
Therefore, we can let $x = 2k$, $y = 2j$, $z = 2h$:

$
  & x + y + z \
  & = 2k + 2j + 2h wide && "(substitution)" \
  & = 2(k + j + h)
$

since $k$, $j$, and $h$ are all integers, we call the sum of these integers $m$.
($m = k + j + h$)

$
  & 2(k + j + h) wide && "(from previous)" \
  & = 2m wide         && "(substitution)"
$

since $m = k + j + h$ is an integer, the sum of $x + y + z = 2m$ is even by
definition. therefore, by contrapositive law, we know that for the integers $x$,
$y$, and $z$, at least one variable must be odd. #qed

= Problem 4
Prove that $m^2 = n^2$ if and only if $m = n$ or $m = -n$.

== Answer

Proposition: $forall m forall n thin ((m^2 = n^2) <=> ((m = n) or (m = -n)))$

Since this is a bidirectional proposition, we have to prove two parts.

First implication: $forall m forall n thin (m^2 = n^2) -> ((m = n) or (m = -n))$

$
         m^2 & = n^2 \
   m^2 - n^2 & = 0 \
  (m-n)(m+n) & = 0
$

If a product of two variables equals to 0, that means at least one of the
multiplier have to be 0. If $(m-n) = 0$, that means $m = n$; and if
$(m + n) = 0$, that means $m = -n$.

Second implication:
$forall m forall n thin ((m = n) or (m = -n)) -> (m^2 = n^2)$

First _or_ case: $forall m forall n thin (m = n) -> (m^2 = n^2)$
$
    m & = n \
  m^2 & = n^2 wide && "(square both sides)"
$

Second _or_ case:
$
    m & = -n \
  m^2 & = (-n)^2 wide && "(square both sides)" \
  m^2 & = n^2 wide    && "(square will always be positive)"
$

Since we've proven the bidirectional proposition is true in both ways, the
statement is proven to be true. #qed


= Problem 5
Show that the product of two of the numbers $65^1000 - 8^2001 + 3^177$,
$79^1212 - 9^2399 + 2^2001$, and $24^4493 - 5^8192 +7^1777$ is non-negative. Is
your proof constructive or non-constructive? [Hint: Do not try to evaluate these
numbers!]

== Answer
Since the result is non-negative, that means the two multipliers must have the
same sign. This is because if the two multipliers (the huge sum of the
expression) have mixed signs (including zero), the result would be negative.

Let the two numbers (result of the addition) be $M$ and $N$.

Case 1: $M >= 0$ and $N >= 0$. The product of two non-negative numbers are
non-negative.

Case 2: $M < 0$ and $N < 0$. The product of two negative numbers are positive
(which is non-negative).

If either $M$ or $N$ is zero, the product would be zero, also non-negative. #qed

= Problem 6
Show that if $r$ is an irrational number, there is a unique integer $n$ such
that the distance between $r$ and $n$ is less than $1/2$.

== Answer

We find the contrapositive: "If there is no integer $n$ such that the distance
between $r$ and $n$ is less than $1/2$, or if there are at least two such
integers, then $r$ is a rational number."

Since we have an _or_ statement, we consider two cases.

Case 1: we assume there is no integer $n$ where $|r - n| < 1/2$. The distance
between two integers must be at least one, and there are no possibilities where
an integer would have a distance where it is less than $1/2$ because it must be
either on the left, right, (two integers, 2nd case) or directly in the middle
(unique number resulting in 0).

Case 2: there are two or more integers within a distance of less than 1/2.


= Problem 7
The *quadratic mean* of two real numbers $x$ and $y$ equals
$sqrt((x^2 + y^2)/2)$. By computing the arithmetic and quadratic means of
different pairs of positive real numbers, formulate a conjecture about their
relative sizes and prove your conjecture.

== Answer

Proposition: for any real number $x$ and $y$, the quadratic mean
$sqrt((x^2 + y^2)/2)$ will always be positive.

Proof: Because both $x$ and $y$ are real numbers, their square should be
non-negative, since the square of all real numbers are positive, and the square
of zero is zero. Therefore, $x^2 + y^2$ is also non-negative. The division of a
non-negative number by two is either a positive number, or zero. Therefore, the
result of the division is non-negative is well. As for the final operation
(square root), the square root of zero is zero, and the square root of a
positive number will always be a positive number. #qed


= Problem 8
Prove that there are no solutions in integers $x$ and $y$ to the equation
$2x^2 + 5y^2 = 14$.

== Answer


= Challenge 1
Prove that $root(3, 2)$ is irrational.

== Answer
We assume $root(3, 2)$ is rational. Therefore, it can be represented as

$
  root(3, 2) = a/b
$

Where $a$ and $b$ are integers with no common factors other than 1, and
$b != 0$.

$
  root(3, 2) & = a/b \
           2 & = a^3/b^3 \
        2b^3 & = a^3
$

Since $b$ is an integer, $b^3$ will be an integer as well. By definition, $2b^3$
where $b^3$ is an integer results in an even number. This shows that $a^3$ is an
even integer as well, for an arbitrary integer $k$, where $a^3 = 2k$.

$
  2b^3 & = a^3 \
  2b^3 & = (2k)^3 wide    && "(substitution)" \
  2b^3 & = 8k^3 \
   b^3 & = 4k^3 = 2(2k^3)
$

We can get that $b^3$ is an even integer as well, since $2k^3$ is an arbitrary
integer. We now know that $b^3$ and $a^3$ are both even, which by definition,
will have a common factor of 2. However, in the definition that we wrote for
$a^3/b^3$ above, the fraction should be in its lowest terms, where $a^3$ and
$b^3$ have no common factors other than 1. This contradicts our original
assumption where $root(3, 2)$ is rational, showing that it is irrational. #qed

