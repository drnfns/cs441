#import "conf.typ": bi, conf
#let date = datetime(year: 2025, month: 9, day: 29)
#show: conf.with(date: date)

= sets
a *set* is an unordered collection of objects. each set can contain items of
mixed types, and it can also contain other sets. the objects that make up the
set are called *elements* of the set.

== describing a set
there are three common ways to describe a set:
- explicit enumberation
  - $A = {1, 2, 3, 4}$
- ellipses if the pattern is trivial
  - $B = {2, 4, 6, ..., 12}$
- set builder notation
  - $C = {y | y = 3k "for some integer" k}$
  - plain english: "this set C contains all elements $y$ such that $y = 3k$ for
    some integer $k$."

== notable sets
these are some common sets that are predefined and commonly used in mathematics:

\
$
  & NN = {0, 1, 2, 3, ...} wide           && "natural numbers" \
  & ZZ = {..., -2, -1, 0, 1, 2, ...} wide && "integers" \
  & ZZ^+ = {1, 2, 3, ...} wide            && "positive integers" \
  & QQ = {p/q | p, q in ZZ, q != 0} wide  && "rational numbers" \
  & RR wide                               && "real numbers" \
  & emptyset = {} wide                    && "empty set"
$

== set equality
two sets are _equal_ if and only if they contain exactly the same elements
(excluding duplicated elements).

\
$
  A = B "iff" forall x thin (x in A <-> x in B)
$

== subsets
some set $A$ is a *subset* of another set *B* if and only if every element of
$A$ is an element in the set $B$. we write this as $A subset.eq B$, and call $B$
a *superset* of $A$.

\
$
  A subset.eq B "iff" forall x thin (x in A -> x in B)
$

=== proper subset
some $A$ is a *proper subset* of $B$ if and only if $A subset.eq B$ but
$A != B$. we write this as $A subset B$.

\
$
  A subset B "iff" forall x thin (x in A -> x in B) and exists y thin (y in B and y in.not A)
$

=== subset properties
- for all sets $S$, $emptyset subset.eq S$.
- for any set $S$, $S subset.eq S$.
- if $S_1 = S_2$, then $S_1 subset.eq S_2$ and $S_2 subset.eq S_1$.

== set operations
we can perform operations between sets as well.

=== $union$ union
the *union* of two sets $A$ and $B$ contains every element that is either in $A$
or in $B$. we write this as $A union B$.

\
$
  A union B = {x | x in A or x in B}
$

=== $inter$ intersection
the *intersection* of two sets $A$ and $B$ contains every element that is in $A$
and also in $B$. we write this as $A inter B$.

\
$
  A inter B = {x | x in A and x in B}
$

we say that two sets are *disjoint* if $A inter B = emptyset$.

=== $-$ difference
the *difference* of two sets $A$ and $B$ contains every element that is in $A$
but not in $B$. we write this as $A - B$.

\
$
  A - B = {x | x in A and x in.not B}
$

=== $accent(A, -)$ complement
the complement of a set $A$, denoted by $accent(A, -)$, contains every element
that is in the universal set $U$, but not in $A$.

\
$
  accent(A, -) = {x | x in U and x in.not A}
$

=== $|S|$ cardinality
let $S$ be a set. if there are exactly $n$ elements in $S$, where $n$ is a
non-negative integer, then $S$ is a finite set whose cardinality is $n$. the
cardinality of $S$ is denoted by $|S|$.

\
$
  S = {1, 2, 3, 4, 5} \
  |S| = 5
$

== power set
given a set $S$, its power set is the set containing all subsets of $S$. we
denote the power set of $S$ as $P(S)$.

\
example:

$
  P({1}) = {emptyset, {1}} \
  P({1, 2, 3}) = {emptyset, {1}, {2}, {3}, {1, 2}, {1, 3}, {2, 3}, {1, 2, 3}}
$

\
note:
- the set $emptyset$ is in the power set of any set.
  - $forall S thin (emptyset in P(S))$
- the set $S$ is in its own power set.
  - $forall S (S in P(S))$
- the cardinality of the power set of any set $S$ is 2 to the power of the
  cardinality of set $S$.
  - $|P(S)| = 2^(|S|)$
