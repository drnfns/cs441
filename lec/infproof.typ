#import "conf.typ": conf, qed
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
*Theorem*: if $n$ is an odd integer, then $n^3$ is an odd integer. \
*Proof*:
+ *assume $p$ is true*: assume $n$ is an odd integer. this means $n$ can be
  written as $2k + 1$ for some integer $k$.
+ *show $q$ must be true*: substitute $(2k + 1)$ for $n$ in $n^3$: \
  - $n^3 = (2k + 1)^3 = 8k^3 + 12k^2 + 6k + 1$
+ *conclude*: after factoring the expression on the right, we get
  $n^3 = 2(4k^3 + 6k^2 + 3k) + 1$, and since $k$ is an integer,
  $4k^3 + 6k^2 + 3k$ is just another big integer, and we can call it $m$. we can
  replace that in the factored equation, which gives us $n^3 = 2m + 1$ -- the
  definition of an odd integer. #qed

== proof by contraposition
proof by contraposition is a type of indirect proof, where we prove the
_contrapositive_ of an implication, which is $not q -> not p$ -- logically
equivalent to $p -> q$.

=== example
*Theorem*: if $n$ is an integer and $n^2$ is even, then $n$ is even. \
*Proof*: we can try doing a direct proof first:
- assume that $n^2$ is even, thus $n^2 = 2k$ for some integer $k$
- square root on both sides: $n = sqrt(2k)$
- ...?

\
at this point, it is difficult to algebraically prove that $n$ must be an even
integer. instead, we use proof by contraposition, since the negation of the
conclusion is easier to work with than the original hypothesis.

\
*Proof*:
+ *assume $not q$*: assume $n$ is odd; thus $n = 2k$ for some integer $k$.
+ $n^2 = (2k+1)^2 = 4k^2 + 4k + 1$
+ *show $not p$*: $= 2(2k^2+ 2k) + 1; m = (2k^2 + 2k); = 2m+1$
+ $n^2 = 2m + 1$

\
thus, $n^2$ is odd, and we proved $not ($n$" is even") -> (n^2 " is even")$, we
can conclude that $n^2$ is even $->$ $n$ is even. #qed

== proof by contradiction

== which to choose

