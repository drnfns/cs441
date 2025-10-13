#import "conf.typ": conf, qed
#let date = datetime(year: 2025, month: 9, day: 29)
#show: conf.with(date: date)

= set identities
as you might have noticed, a lot of operations that we do with sets are similar
to the logical operations that we have before; like conjunction ($and$) and
intersection ($inter$), disjunction ($or$) and union ($union$), negation ($not$)
and complement ($accent(S, -)$); and just as how logical equivalences help us to manipulate logical expressions, *set
  identities* help us simplify and understand complex set definitions.

== important identities
here are some notable identities of sets; you might find similarity from many of them, when compared to the logical equivalences we learned earlier. keep in mind that the set $U$ is a universal set.

\
#table(
  columns: (auto, 1fr),
  table.header("name", "identity"),
  "identity laws",
  $
    A union emptyset = A \
    A inter U = A
  $,
  "domination laws",
  $
    A union U = U \
    A inter emptyset = emptyset
  $,
  "idempotent laws",
  $
    A union A = A \
    A inter A = A
  $,
  "complementation law",
  $
    accent(accent(A, -), -) = A
  $,
  "commutative laws",
  $
    A union B = B union A \
    A inter B = B inter A
  $,
  "associative laws",
  $
    A union (B union C) = (A union B) union C \
    A inter (B inter C) = (A inter B) inter C
  $,
  "distributive laws",
  $
    A inter (B union C) = (A inter B) union (A inter C) \
    A union (B inter C) = (A union B) inter (A union C)
  $,
  "demorgan's laws",
  $
    accent(A union B, -) = accent(A, -) inter accent(B, -) \
    accent(A inter B, -) = accent(A, -) union accent(B, -)
  $,
  "absorption laws",
  $
    A union (A inter B) = A \
    A inter (A union B) = A
  $,
  "complement laws",
  $
    A union accent(A, -) = U \
    A inter accent(A, -) = emptyset
  $
)

== proving set identities
there are four common methods to prove set identities.

+ membership tables
  - similar to how we use a truth table to prove logical equivalence, membership tables prove set equivalences.
+ logical argument ("mutual subset" method)
  - we prove one set ($A$) is a subset of ($B$), and $B$ is a subset of $A$. it is similar to how we prove biconditionals using logical equivalences.
+ using set builder notation
  - we apply set identities and logical equivalences using set builder notation to prove set identities.
- applying other known set identities
  - it is similar to using existing logical equivalences to prove new ones.

=== membership tables
the membership table indicate the ways in which an arbitrary element may or may not be included between sets and the set operation.

#table(
  columns: (1fr, 1fr, 1fr),
  table.header($A$, $B$, $A inter B "(logical" and ")"$),
  $1$, $1$, $1$,
  $1$, $0$, $0$,
  $0$, $1$, $0$,
  $0$, $0$, $0$
)

==== example
*goal*: prove $A inter (B union C) = (A inter B) union (A inter C)$ \
*proof*: using membership table.

\
#table(
  columns: (auto, auto, auto, 0.5fr, 1fr, 0.5fr, 0.5fr, 1.5fr),
  table.header($A$, $B$, $C$, $B union C$, $A inter (B union C)$, $A inter B$, $A inter C$, $(A inter B) union (A inter C)$),
  $1$, $1$, $1$, $1$, $1$, $1$, $1$, $1$,
  $1$, $1$, $0$, $1$, $1$, $1$, $0$, $1$,
  $1$, $0$, $1$, $1$, $1$, $0$, $1$, $1$,
  $1$, $0$, $0$, $0$, $0$, $0$, $0$, $0$,
  $0$, $1$, $1$, $1$, $0$, $0$, $0$, $0$,
  $0$, $1$, $0$, $1$, $0$, $0$, $0$, $0$,
  $0$, $0$, $1$, $1$, $0$, $0$, $0$, $0$,
  $0$, $0$, $0$, $0$, $0$, $0$, $0$, $0$
)

\
since the appropriate columns of the membership table are the same, we can conclude that $A inter (B union C) = (A inter B) union (A inter C)$. #qed

=== logical argument (mutual subset)
you might recall that: $A = B <=> (A subset.eq B) and (B subset.eq A)$. as a result, we can prove a set's identity by proving that each side of the equation is a subset of each other.

==== example
*goal*: prove that $accent(A inter B, -) = accent(A, -) union accent(B, -)$. \
*proof*: we have to prove two things: $accent(A inter B, -) subset.eq accent(A, -) union accent(B, -)$, and $accent(A, -) union accent(B, -) subset.eq accent(A inter B, -)$.

\
part one: $accent(A inter B, -) subset.eq accent(A, -) union accent(B, -)$
+ let $x$ be an arbitrary element from $accent(A inter B, -)$.
+ by definition of complement, $x in.not (A inter B)$.
+ by definition of $in.not$, $not (x in A inter B)$
+ by definition of intersection, $not (x in A and x in B)$
+ by demorgan's law, $not (x in A) or not (x in B)$
  - in the first case, $x in.not A$, so by definition of a complement, $x in accent(A, -)$
  - in the second case, $x in.not B$, and by definition of a complement, $x in accent(B, -)$
  - combining both cases, $x in accent(A, -) or x in accent(B, -)$
+ by definition of a union, $x in accent(A, -) union accent(B, -)$

\
part two: $accent(A, -) union accent(B, -) subset.eq accent(A inter B, -)$
+ let $x$ be an arbitrary element from $x in accent(A, -) union accent(B, -)$
+ by definition of union, $x in accent(A, -) or x in accent(B, -)$
+ by definition of complement, $x in.not A or x in.not B$
  - in the first case, $x in.not A$, so $x$ cannot be in both $A$ and $B$
  - in the second case, $x in.not B$, so $x$ cannot be in both $A$ and $B$
+ therefore, if $x in accent(A, -) union accent(B, -)$, then $x in accent(A inter B, -)$

\
since we haven shown both $accent(A inter B, -) subset.eq accent(A, -) union accent(B, -)$, and $accent(A, -) union accent(B, -) subset.eq accent(A inter B, -)$, we can conclude that $accent(A inter B, -) = accent(A, -) union accent(B, -)$.

=== set builder notation

we can use set builder notation to make very precise proofs. it is similar to the logical argument method, however, it uses less words and more mathematical notations.

==== example

*goal*: prove that $accent(A inter B, -) = accent(A, -) union accent(B, -)$ \
*proof*:
$
  accent(A inter B, -) &= {x | x in.not (A inter B)} wide wide &"definition of complement" \
  &= {x | not (x in (A inter B))} &"definition of"in.not \
  &= {x | not (x in A and x in B)} &"definition of intersect" \
  &= {x | not (x in A) or not (x in B)} &"demorgan's law" \
  &= {x | x in.not A or x in.not B} &"definition of " in.not \
  &= {x | x in accent(A, -) or x in accent(B, -)} &"definition of complement" \
  &= {x | x in accent(A, -) union accent(B, -))} &"definition of union" 
$

=== apply set identities

we can also directly manipulate the set by using the set identities that we have above.

==== example

*goal*: prove that $accent(A union (B inter C), -) = (accent(C, -) union accent(B, -)) inter accent(A, -)$ \
*proof*
$
  accent(A union (B inter C), -) &= accent(A, -) inter accent((B inter C), -) wide wide &"demorgan's law" \
  &= accent(A, -) inter (accent(B, -) union accent(C, -)) &"demorgan again" \
  &= (accent(B, -) union accent(C, -)) inter accent(A, -) &"commutative law" \
  &= (accent(C, -) union accent(B, -)) inter accent(A, -) &"commutative law"
$