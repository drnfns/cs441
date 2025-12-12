#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 9, day: 8))

= logical puzzles

== example 1
alice and bob are technical support agents. if an agent is having a bad day,
they will always lie to you. if an agent is having a good day, they will always
tell you the truth. alice tells you that bob is having a bad day. bob tells you
that he and alice are both having the same type of day. can you trust the advice
you receive from alice during your call?

=== rules
- if an agent is having a bad day, they will always lie
- if an agent is having a good day, they will always tell the truth
- they can't be both lying or telling the truth at the same time

=== propositions
- $A equiv "alice is having a bad day"$
- $B equiv "bob is having a bad day"$
- $not A -> B$
  - if alice isn't lying, then bob is having a bad day
- $not B -> (A <-> B)$
  - if bob isn't lying, then alice and bob are both having the same type of day

=== case 1
we assume $A$ is true, where alice is having a bad day. that means alice lies
about bob having a bad day; therefore bob is having a good day.

\
based on alice's statement, we can deduct that $A equiv top$ and $B equiv bot$.
if we substitute in the truth values in the propositions above, we can get that:

\
$
  not top -> bot & = top #h(1em) && checkmark \
  not bot -> (top <-> bot) = top -> bot & = bot && crossmark "(contradiction)"
$

=== case 2
we assume $B$ is true, where bob is having a bad day, therefore, according to
the rules, alice must be having a good day, where $A equiv bot$ and
$B equiv top$. we can then substitute in the values:

\
$
  not top -> (bot <-> top) = bot -> bot & = top #h(1em) && checkmark \
            not bot -> top = top -> top & = top         && checkmark
$

=== conclusion
since case 2 is the only case that satisfies both propositions, we can conclude
that bob is having a bad day, and alice is having a good day; therefore, we can
trust alice's advice.

== example 2
consider a group of friends: fredrik, anuradha, and cai. if fredrik is not the
oldest, then anuradha is. if anuradha is not the youngest, then cai is the
oldest. determine the relative ages of fredrik, anuradha, and cai.

=== rules
- fredrik, anuradha and cai can't be the the oldest or the youngest at the same
  time

=== propositions
- $F equiv "fredrik is the oldest"$
- $A equiv "anuradha is the oldest"$
- $A' equiv "anuradha is the youngest"$
- $C equiv "cai is the oldest"$
- $not F -> A$
- $not A' -> C$
- $not (A and F)$
- $not (A and C)$
- $not (C and F)$

=== case 1

=== case 2

#pagebreak()
= propositional equivalence

== definitions
*tautology*: a compound proposition that is *always true*, regardless of the
truth values of the propositions occurring within it. ($p or not p$)

\
*contradition*: a compound proposition that is *always false*, regardless of the
truth values of the propositions occurring within it. ($not p and p$)

\
*contingency*: a compound proposition whose truth value is *dependent* on the
propositions occurring within it. ($p or q$)

\
*logically equivalent*: two propositions $p$ and $q$ are logically equivalent
exactly when $p <-> q$ is a _tautology_. we use the notation $p equiv q$ to
express that $p$ and $q$ are logically equivalent. ($p -> q equiv not p or q$)

== proving simple logical equivalences

for simple propositions, we can just create a truth table for both sides. for
example, take this equivalence: $p -> q equiv not p or q$. we only need to
create 4 rows, since there is only $p$ and $q$.

\
#table(
  columns: (auto, 1fr, 1fr, 1fr),
  table.header($p, q$, $not p$, $not p or q$, $p -> q$),
  [$bot bot$], $top$, $top$, $top$,
  [$bot top$], $top$, $top$, $top$,
  [$top bot$], $bot$, $bot$, $bot$,
  [$top top$], $bot$, $top$, $top$,
)

\
however, since the number of rows grow exponentially($2^n$), this is not usually
the best way to prove an equivalence. in the next section, we introduce some
common yet important logic equivalences to help you construct new logical
equivalences.

== useful logic equivalences
we use $T$ to denote a compound proposition that is a *tautology* and $F$ for a
compound proposition that is a *contradiction*.

#table(
  columns: (auto, 1fr),
  table.header("name", "equivalence"),
  "identity laws",
  $
    p and T equiv p \
    p or F equiv p
  $,

  "domination laws",
  $
    p and F equiv F \
    p or T equiv T
  $,

  "idempotent laws",
  $
    p and p equiv p \
    p or p equiv p
  $,

  "double negation law",
  $
    not(not p) equiv p
  $,

  "commutative laws",
  $
    p or q equiv q or p \
    p and q equiv q and p
  $,

  "associative laws",
  $
    (p and q) and r equiv p and (q and r) \
    (p or q) or r equiv p or (q or r)
  $,

  "distributive laws",
  $
    p and (q or r) equiv (p and q) or (p and r) \
    p or (q and r) equiv (p or q) and (p or r)
  $,

  highlight[demorgan's laws],
  $
    not (p or q) equiv not p and not q \
    not (p and q) equiv not p or not q
  $,

  "absorption laws",
  $
    p or (p and q) equiv p \
    p and (p or q) equiv p
  $,

  "negation laws",
  $
    p or not p equiv T \
    p and not p equiv T
  $,
)

== other logical equivalences

#grid(
  columns: (1fr, 1fr),
  align: center,
  table(
    inset: 0.75em,
    table.header("conditional logic equivalences"),
    [
      $p -> q equiv not p or q$ \
      $p -> q equiv not q -> not p$ \
      $p or q equiv not p -> q$ \
      $p and q equiv not (p -> not q)$ \
      $not (p -> q) equiv p and not q$ \
      $(p -> q) and (p -> r) equiv p -> (q and r)$ \
      $(p -> r) and (q -> r) equiv (p or q) -> r$ \
      $(p -> q) or (p -> r) equiv p -> (q or r)$ \
      $(p -> r) or (q -> r) equiv (p and q) -> r$
    ],
  ),

  table(
    inset: 0.75em,
    table.header("biconditional logic equivalences"),
    [
      $p <-> q equiv (p -> q) and (q -> p)$ \
      $p <-> q equiv not p <-> not q$ \
      $p <-> q equiv (p and q) or (not p and not q)$ \
      $not(p <-> q) equiv p <-> not q$
    ],
  ),
)

#pagebreak()
= activities
== question 1: prove that $(p and q) -> (p or q)$ is a tautology.
$
  & (p and q) -> (p or q) \
  & equiv not (p and q) or (p or q) \
  & equiv not p or not q or p or q \
  & equiv (not p or p) or (not q or q) \
  & equiv top or top \
  & equiv top
$

== question 2: prove that $(p -> q) or (p -> r) equiv p -> (q or r)$
$
  & (p -> q) or (p -> r) \
  & equiv not p or q or not p or r \
  & equiv not p or q or r \
  & equiv not p or (q or r) \
  & equiv p -> (q or r)
$
