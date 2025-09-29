#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 9, day: 22))

= informal proofs
proofs are where we can use what we have learned so far with propositional
equivalence and rules of inference. in this chapter we cover basic fundamental
proof techniques and strategies to prove mathematical theorems, in particular to
those stated as implications.

== direct proof
for a direct proof, we assume that the premise $p$ is true and then show that
the conclusion $q$ must follow.

=== example
*Theorem*: if $n$ is an odd integer, then $n^3$ is an odd integer.

\
*Proof*:
+ *assume $p$ is true*: assume $n$ is an odd integer. this means $n$ can be
  written as $2k + 1$ for some integer $k$.
+ *show $q$ must be true*: substitute $(2k + 1)$ for $n$ in $n^3$: \
  - $n^3 = (2k + 1)^3 = 8k^3 + 12k^2 + 6k + 1$
+ *conclude*: after factoring the expression on the right, we get
  $n^3 = 2(4k^3 + 6k^2 + 3k) + 1$, and since $k$ is an integer,
  $4k^3 + 6k^2 + 3k$ is just another big integer, and we can call it $m$. we can
  replace that in the factored equation, which gives us $n^3 = 2m + 1$ -- the
  definition of an odd integer. #h(1fr) $qed$

== proof by contraposition
proof by contraposition is a type of indirect proof, where we prove the
_contrapositive_ of an implication, which is $not q -> not p$ -- logically
equivalent to $p -> q$.

== proof by contradiction

== which to choose

