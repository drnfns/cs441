#import "conf.typ": conf
#show: conf.with(date: datetime(year: 2025, month: 9, day: 15))

= nested quantifiers

$
  forall x thin exists y thin forall z thick [(x + y) dot z = 0]
$
translation: for all $x$, there exists a $y$ such that for all $z$, the result
of $x$ plus $y$, multiplied by $z$, is zero.

== nested quantifier order

the order of the quantifiers matter! when reading from left to right, _later_
quantifiers are within the scope of the _earlier_ ones.

\
$
  forall x thin exists y thick (x + y = 0) quad checkmark \
  exists y thin forall x thick (x + y = 0) quad crossmark
$

== translation

yes, we can (obiviously) still formalize sentences from english. let's see some
examples.

=== example 1
take this statement:

\
#align(center)[every real number except zero has a multiplicative inverse.]

\
we can rewrite that into a sentence that is easier for us to translate:

\
#align(center)[for *every* real number $x$, if $x != 0$, \ then there *exists* a
  real number $y$ such that $x dot y = 1$.]

\
finally, we can formalize that sentence:

\
$
  forall x thin [(x != 0) -> exists y thin [x dot y = 1]]
$

=== example 2
take this statement:

\
#align(center)[every student has at least one friend that is dating a steelers
  fan.]

\
we first need to rewrite our statement again:

\
#align(center)[for *every* student $x$, then\ there *exists* a friend of theirs
  who is dating a steelers fan.]

\
Let:
- $S(x) equiv$ "$x$ is a student"
- $F(x, y) equiv$ "$x$ is friends with $y$"
- $D(x, y) equiv$ "$x$ and $y$ are dating"
- $E(x) equiv$ "$x$ is a steelers fan"

\
$
  forall x thin [S(x) -> exists y thin [F(x, y) and D(y, z) and E(z)]]
$
