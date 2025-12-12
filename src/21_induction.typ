#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 11, day: 19))

= proof by induction
consider a recursive function to compute the factorial of a non-negative integer
$n$.

\
```js
function factorial(n) {
  if (n == 0) return 1
  return n * factorial(n - 1)
}
```

\
how can we be certain that this function is correct for _every_ non-negative
integer? this is where induction comes in.

== steps
for example, we want to prove $forall x in NN thin P(x)$ by induction. there are
steps in general:

\
+ prove $P(0)$.
+ show that $P(k) -> P(k + 1)$ for any _arbitrary_ $k$.
  - intuition: if $P(0)$ is true, then $P(1)$ is true, therefore $P(2)$ is
    true...
+ conclude that $P(x)$ is true $forall x in NN$.

\
we can use dominoes as an analogy: we first prove the first domino falls
($P(0)$); then, we prove that that any dominoes following it will fall
($P(k) -> P(k + 1)$); and finally we conclude that all the dominoes will fall
($forall x P(x)$).

== structure
proving by induction usually have a similar structure.

\
#table(
  columns: 1fr,
  [$P(x) equiv$ define the property that we are trying to solve],
  [*base case*: prove the first domino will fall; usually it means proving
    $P(0)$ or $P(1)$.],
  [*inductive hypothesis*: assume that $P(k)$ is true for an arbitrary $k$.],
  [*inductive step*: show that $P(k) -> P(k+1)$. that is, prove that once the
    first domino falls, prove that the following will fall too. proofs will
    differ from one another in this step.],
  [*conclusion*: conclude that all dominoes have fallen and the claim is true.]
)

== examples
in this section we provide examples for proving different topics.

=== summation
we want to prove that the sum $1 + 2 + 2^2 + ... + 2^n = 2^(n + 1) - 1$ for all
non-negative integers $n$.

#table(
  columns: 1fr,
  $P(n) equiv sum^n_(i=0) 2^i = 2^(n+1)-1$,
  [*base case*: $P(0): 2^0 = 1 med checkmark$],
  [*inductive hypothesis*: assume that $P(k)$ holds for an arbitrary natural
    number $k$.],
  [
    *inductive step*: we will now show that $P(k) -> P(k+1)$.

    \
    $1 + 2 + ... + 2^k &= 2^(k+1)-1 wide &&"(by I.H)" \
    1 + 2 + ... + 2^k + 2^(k+1) &= 2^(k+1)-1 + 2^(k+1) wide &&"(add both sides)" \
    1 + 2 + ... + 2^k + 2^(k+1) &= 2^(k+1) + 2^(k+1) - 1 wide &&"(associativity)" \
    1 + 2 + ... + 2^k + 2^(k+1) &= 2^1 times 2^(k+1) - 1 wide &&"(by definition)" \
    1 + 2 + ... + 2^k + 2^(k+1) &= 2^(k+2) - 1 wide &&"(exponential definition)"$
  ],
  [
    *conclusion*: since we have proved the base case and the induction case,
    $forall n in NN thin P(n)$ by mathematical induction.
  ]
)

=== inequalities
we want to prove that $2^n < n!$ for every positive integer $n >= 4$.

#table(
  columns: 1fr,
  $P(n) equiv 2^n < n!$,
  [*base case*: $P(4): 2^4 < 4! med checkmark$],
  [*inductive hypothesis*: assume that $P(k)$ holds for an arbitrary integer
    $k >= 4$],
  [
    *inductive step*: we will now show that $P(k) -> P(k+1)$.

    \
    $
                2^k & < k!                  && "(by inductive hypothesis)" \
      2^1 times 2^k & < 2 times k! wide     && "(multiply by 2)" \
            2^(k+1) & < 2 times k!          && "(definition of exp)" \
            2^(k+1) & < (k+1) times k! wide && "(substitution since 2 < k + 1)" \
            2^(k+1) & < (k + 1)! wide       && "(definition of factorial)"
    $
  ],
  [*conclusion*: since we have proved the base case and the inductive case,
    $forall n >= 4(P(n))$ by induction.]
)

=== divisibility
we want to prove that $n^3 - n$ is divisible by 3 whenever $n$ is a positive
integer.

#table(
  columns: 1fr,
  [$P(n) equiv 3 | (n^3 - n)$],
  [*base case*: $P(1): 3 | 0 med checkmark$],
  [*inductive hypothesis*: assume that $P(k)$ holds for an arbitrary positive
    integer $k$.],
  [
    *inductive step*: we will now show that $P(k) -> P(k+1)$.

    \
    $
      (k+1)^3 - (k+1) & = k^3 + 3k^2 + 3k + 1 - (k + 1) \
                      & = k^3 + 3k^2 + 2k \
                      & = (k^3 - k) + (3k^2 + 3k) \
                      & = (k^3 - k) + 3(k^2 + k)
    $

    \
    we know that $3 | (k^3 - k)$ by inductive hypothesis, and $3 | 3(k^2 + k)$
    by definition.
  ],
  [*conclusion*: since we have proved the base case and inductive case,
    $forall n in ZZ^+(P(n))$ by induction.]
)
