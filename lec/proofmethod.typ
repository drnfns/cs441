#import "conf.typ": conf, qed
#show: conf.with(date: datetime(year: 2025, month: 9, day: 30))

= proof methods
previously we learned to prove theorems stated as implications. however, not all
theorems can be in the form of $p -> q$. sometimes, we need to prove a theorem
in the form of something like this:

\
$(p_1 or p_2 or p_3 or ... or p_n) -> q$

\
therefore, we might need to examine multiple cases; and we introduce several
methods just to do that.

== exhaustive proof
in an *exhaustive proof*, we prove a theorem by exhausting all the
possibilities. this works best on theorems that only requires a small amount of
examples to be proven.

=== example
*theorem*: there exists a number $n$ where $n^2 + 1 >= 2n$, and $n$ is a
positive integer with $1 <= n <= 4$.

\
*proof*:
- $n=1$: $1^2 + 1 = 2$, $2 dot 1 = 2$, $2 > 2 thick checkmark$
- $n=2$: $2^2 + 1 = 5$, $2 dot 2 = 4$, $5 > 4 thick checkmark$
- $n=3$: $3^2 + 1 = 10$, $2 dot 3 = 6$, $10 > 6 thick checkmark$
- $n=4$: $4^2 + 1 = 17$, $2 dot 4 = 8$, $17 > 8 thick checkmark$

\
since we have verified all four cases of $n$ from 1 to 4, we have shown that
$n^2 + 1 >= 2n$ where $1 <= n <= 4$. #qed

== proof by cases
*proof by cases* is used when we need to examine multiple possibilities, but an
exhaustive check is not feasible. instead of checking every _individual_ value,
we group possibilities into different categories, or _cases_ that cover all
potential scenarios.

=== example
*theorem*: if $x$ and $y$ are real numbers, then $|x| + |y| >= |x + y|$.

\
*note*: if $|x| >= 0$, $|x| = x$, otherwise $|x| = -x$

\
*proof*:
+ $x >= 0$ and $y >= 0$
  - $|x| + |y| = x + y$, $|x + y| = x + y$
  - $x + y >= x + y thick checkmark$
+ $x < 0$ and $y < 0$
  - $|x| + |y| = -x - y$, $|x + y| = -x-y$
  - $-x-y >= -x-y thick checkmark$
+ $x >= 0$ and $y < 0$
  - if $x >= |y|$, then $|x + y| = x - |y|$, $|x| + |u| = x + |y|$
    - $x + |y| >= x - |y| thick checkmark$
  - if $x < |y|$, then $|x + y| = |y| - x$, $|x| + |y| = x + |y|$
    - $x + |y| >= |y| - x thick checkmark$
+ symmetrical to case 3. #qed

== existence proof
an existence proof is a proof that demonstrates that an element with a certain
property exists. there are two types of an existence proof: *constructive*, and
*non-constructive*.

=== constructive existence proof
in a *constructive* existence proof, we prove the claim by finding and showing
an actual example that satisfies the condition, similar to how existential
generalization works.

==== example

*theorem*: there is a positive integer that can be written as the sum of cubes
of positive integers in two different ways.

\
*proof*: $1729 = 10^3 + 9^3 = 12^3 + 1^3$ \ the positive integer 1729 is the sum
of both 10 and 9 cubed, as well as 12 and 1 cubed. #qed

=== non-constructive existence proof
in an *non-constructive* existence proof, we prove that an element with the
desired property is guaranteed to exist without actually finding a specific
example; it often works by showing that one of several possibilities must be
true, even if we don't know which one.

==== example
*theorem*: there exists two irrational numbers $x$ and $y$ such that $x^y$ is
rational.

\
*proof*: we know that $sqrt(2)$ is irrational, so let $x, y = sqrt(2)$.

\
*cases*:
+ if $sqrt(2)^sqrt(2)$ is rational, then we have completed the goal.
+ if $sqrt(2)^sqrt(2)$ is irrational, then we let $x = sqrt(2)^sqrt(2)$ and
  $y = sqrt(2)$, which both are irrational. we now calculate
  $sqrt(2)^sqrt(2)^sqrt(2) = sqrt(2)^2 = 2$, which is rational, completing the
  goal. #qed

\
*note*: what makes this a non-constructive proof is that we don't necessarily
know whether $sqrt(2)^sqrt(2)$ is irrational or rational. however, in either
case, we can use it to construct a rational number.

== uniqueness proofs
