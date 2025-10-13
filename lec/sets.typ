#import "conf.typ": conf
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
  A = B "if and only if" forall x thin (x in A <-> x in B)
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

\
we can also get the union of any number of set $S$ by using a big $union$
operator, like this:

$
  union.big_(i=1)^n S_i
$

=== $inter$ intersection
the *intersection* of two sets $A$ and $B$ contains every element that is in $A$
and also in $B$. we write this as $A inter B$.

\
$
  A inter B = {x | x in A and x in B}
$

\
similar to union, we can use a big $inter$ to get the intersection of any number
of set $S$, like the following:

\
$
  inter.big_(i=1)^n S_i
$


\
we say that two sets are *disjoint* if $A inter B = emptyset$ (contains no
overlapping elements).

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
denote the power set of $S$ as $cal(P)(S)$.

\
think of a set like a tree. we start with an empty set, and we start inserting
items at the leaf node until it is the set we want. a power set of a set is like
the every possible state that the tree could be in before it is what we have
currently; see #link(
  "https://en.wikipedia.org/wiki/Power_set#/media/File:Hasse_diagram_of_powerset_of_3.svg",
)[image].

\
example:
$
  cal(P)({1}) = {emptyset, {1}} \
  cal(P)({1, 2, 3}) = {emptyset, {1}, {2}, {3}, {1, 2}, {1, 3}, {2, 3}, {1, 2, 3}}
$

\
*note*:
- the set $emptyset$ is in the power set of any set.
  - $forall S thin (emptyset in cal(P)(S))$
- the set $S$ is in its own power set.
  - $forall S (S in cal(P)(S))$
- the cardinality of the power set of any set $S$ is 2 to the power of the
  cardinality of set $S$.
  - $|cal(P)(S)| = 2^(|S|)$

=== power set of a nested set
for the power set of a nested set, you don't need to compute the power set of
inner set; instead, treat it like a single item.

\
$
  cal(P)({1, 2, {1, 2}}) = {
    emptyset,
    {1},
    {2},
    {1, 2},
    {{1, 2}},
    {1, {1, 2}},
    {2, {1, 2}},
    {1, 2, {1, 2}}
  }
$

\
to check if you calculated the power set of a set correctly, you can check the
cardinality; recall that the cardinality of the power set of any set $S$ is
$2^(|s|)$.

== aside: ordered collections

the *ordered n-tuple* $(a_1, a_2, ..., a_n)$ is the _ordered_ collection that
has $a_1$ as its first element, $a_2$ as its second element, ..., so on and so
forth.

\
#align(center)[*note*: $(a_1, a_2, ..., a_n) = (b_1, b_2, ..., a_n)$ _if and
    only if_ $a_i = b_i$ for $i = 1, ..., n$]

== cartesian product

if $A$ and $B$ are sets, the *cartesian product* of $A$ and $B$ (denoted as
$A times B$) is the set of all ordered pairs $(a, b)$ such $a in A$ and
$b in B$.

\
$
  A times B = {(a, b) | a in A and b in B}
$

\
the cartesian product of two sets are _not_ commutative. that means,
$(A times B) != (B times A)$.

=== cartesian product between multiple sets
example: let
- $S = {x | x "is enrolled in CS 441"}$
- $G = {x | x in RR and (0 <= x <= 100)}$
- $Y = {"freshman", "sophomore", "junior", "senior"}$

\
the set $S times Y times G$ consists of _all possible_
$("student", "year", "grade")$ combinations.

== use with quantifiers
set notation allows us to make quantified statements more precise by explicitly
stating the domain. for example, this statement:

\
$
  forall x in RR thin (x^2 >= 0)
$

\
states that the square of any real number is at least zero(0). let's try a more
complex statement:

\
$
  forall n in ZZ med exists j, k in ZZ thin ((3n + 2 = 2j + 1) -> (n = 2k+1))
$

\
states that if $n$ is an integer and $3n + 2$ is odd, then $n$ is odd.

=== truth sets
given a predicate $P(x)$ and its corresponding domain $D$, the *truth set* of
$P(x)$ enumerates all elements in $D$ that make the predicate $P$ true. the
truth set $T_P$ (non canonical name) for any predicate $P(x)$ is denoted by:

\
$
  T_P = {x in D | P(x)}
$

\
*note*:
- $forall x P(x)$ is true iff the truth set $T_P$ is the _entire domain_ $D$.
- $exists x P(x)$ is true iff the truth set $T_P$ is _non-empty_.

== aside: bitmaps
we can represent sets as bitmaps, a common data structure used in computing.
take the set $S = {x | x in NN, x < 10}$; we can represent any subset of $S$
just in $|S| = 10$ bits. before doing that however, we need to agree on an
ordering. for ease of understanding, we use the natural order of numbers.

\
to represent any subset of $S$ with a bitmap with natural ordering, we have 10
bits, with the $n^"th"$ bit representing if the number $n$ exists in the set.
for example:

\
- ${1, 3, 5, 7, 9} = 0101 thick 0101 thick 01$
- ${1, 1, 1, 4, 5} = 0100 thick 1100 thick 00$ (we remove the duplicated
  elements in the set, so it is just $1, 4, 5$)
