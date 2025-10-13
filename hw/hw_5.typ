#import "conf.typ": conf
#show: conf.with(
  id: "Username:",
  name: "Name:",
  title: "hw_5",
  date: datetime(
    year: 2025,
    month: 10,
    day: 1,
  ),
)

= Problem 1
Determine whether these statements are true or false.

+ $emptyset in {emptyset}$
+ $emptyset in {emptyset, {emptyset}}$
+ ${emptyset} in {emptyset}$
+ ${emptyset} in {{emptyset}}$
+ ${emptyset} subset {emptyset, {emptyset}}$
+ ${{emptyset}} subset {emptyset, {emptyset}}$
+ ${{emptyset}} subset {{emptyset}, {emptyset}}$

== Answer

= Problem 2
Find two sets $A$ and $B$ such that $A in B$ and $A subset.eq B$.

== Answer

= Problem 3
Show that if $A subset.eq C$ and $B subset.eq D$, then
$A times B subset.eq C times D$.

== Answer

= Problem 4
This exercise presents *Russell's paradox*. Let $S$ be the set that contains a
set $x$ if the set $x$ does not belong to itself, so that
$S = {x | x in.not x}$.

+ Show the assumption that $S$ is a member of S leads to a contradiction.
+ Show the assumption that $S$ is not a member of $S$ leads to a contradiction.

By parts (a) and (b) it follows that the set $S$ cannot be defined as it was.
This paradox can be avoided by restricting the types of elements that sets can
have.

== Answer

= Problem 5
Prove the idempotent laws in Table 1 by showing that

+ $A union A = A$
+ $A inter A = A$

== Answer

= Problem 6
Let $A$ and $B$ be sets. Show that

+ $(A inter B) subset.eq A$
+ $A subset.eq (A union B)$
+ $A - B subset.eq A$
+ $A inter (B - A) = emptyset$
+ $A union (B - A) = A union B$

== Answer

= Problem 7
Show that if $A$ and $B$ are sets with $A subset.eq B$, then

+ $A union B = B$
+ $A inter B = A$

== Answer

= Problem 8
Let $A$, $B$, and $C$ be sets. Use the identity $A - B = A union accent(B, -)$,
which holds for any sets $A$ and $B$, and the identities from Table 1 to show
that $(A - B) inter (B - C) inter (A - C) = emptyset$.

== Answer

= Challenge 1
The *symmetric difference* of $A$ and $B$, denoted by $A xor B$, is the set
containing those elements in either $A$ or $B$, but not in both $A$ and $B$.

Determine whether the symmetric difference is associative; that is, if $A$, $B$,
and $C$ are sets, does it follow that $A xor (B xor C) = (A xor B) xor C$?

== Answer
