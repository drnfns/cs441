#import "conf.typ": conf, qed
#show: conf.with(
  id: "alj213",
  name: "Alex Jin",
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
+ True
+ True
+ False
+ True
+ True
+ True
+ True

= Problem 2
Find two sets $A$ and $B$ such that $A in B$ and $A subset.eq B$.

== Answer
$A = emptyset, B = {emptyset}$

= Problem 3
Show that if $A subset.eq C$ and $B subset.eq D$, then
$A times B subset.eq C times D$.

== Answer
since $x in A and x in C$ and $y in B and y in D$ from the definition of
subsets, $(x, y) in A times B$ and $(x, y) in C times D$. $C$ and $D$ is a
larger set that contains $A$ and $D$, therefore the product of $A$ and $B$ also
must be in $C$ and $D$.

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

+ If $S$ belongs to itself, then it contradicts the definition where the set
  should not contain any set $x$ that contains itself.
+ If $S$ does not belong to itself, then it contradicts the definition where it
  should contain itself; since $x$ is any set that does not contain itself.

= Problem 5
Prove the idempotent laws in Table 1 by showing that

+ $A union A = A$
+ $A inter A = A$

== Answer
+ $
    A union A & = {x | x in (A union A)} \
              & = {x | x in A or x in A} wide & "(def of union)" \
              & = {x | x in A}                &     "(simplify)" \
              & = A
  $
+ $
    A inter A & = {x | x in (A inter A)} wide & "(def of intersection)" \
              & = {x | x in A and x in A}     & "(def of intersection)" \
              & = {x | x in A}                &            "(simplify)" \
              & = A
  $


= Problem 6
Let $A$ and $B$ be sets. Show that

+ $(A inter B) subset.eq A$
+ $A subset.eq (A union B)$
+ $A - B subset.eq A$
+ $A inter (B - A) = emptyset$
+ $A union (B - A) = A union B$

== Answer
+ by definition of a subset, we want to prove that
  $forall x ((x in (A inter B)) -> (x in A))$
  - let $x$ be an arbitrary element so that $x in (A inter B)$
  - by definition of intersection, $(x in A) and (x in B)$
  - therefore, $x in A$ must be true, completing the implication. #qed
+ by definition of a subset, we want to prove
  $forall x ((x in A) -> (x in (A union B)))$
  - let $x$ be an arbitrary element so that $x in A$.
  - by rule of addition, since $x in A$ is true, $(x in A) or (x in B)$ is also
    true.
  - by definition of a union, $x in (A union B)$
  - therefore, we proved $(x in A) -> (x in (A union B))$, satisfying the
    definiiton of a subset. #qed
+ by definition of a subset, we want to prove
  $forall x ((x in (A - B)) -> (x in A))$.
  - let $x$ be an arbitrary element so that $x in (A - B)$.
  - by definition of a set difference, $(x in A) and (x in.not B)$.
  - by simplification, we can get $x in A$, which completes our implication.
    #qed
+ let $x$ be an arbitrary element in $A inter (B - A)$.
  - by definition of intersection, $(x in A) and (x in B - A)$.
  - by definition of set difference, $(x in A) and (x in B) and (x in.not A)$.
  - $x$ cannot be both in $A$ and not in $A$, therefore, we get an empty set.
    #qed
+ let x be an arbitrary element in $A union (B - A)$.
  - by definition of union, $(x in A) or (x in B - A).$
  - by definition of set difference, $(x in A) or ((x in B) and (x in.not A))$.
  - by distribution, we get
    $((x in A) or (x in B)) and ((x in A) or (x in.not A))$
  - since $(x in A) or (x in.not A)$ is a tautology, so we can discard the right
    part of the $or$ operator.
  - after simplifying, we get $(x in A) or (x in B)$, and by definition of a
    union, we know that $(x in A union B)$. #qed

= Problem 7
Show that if $A$ and $B$ are sets with $A subset.eq B$, then

+ $A union B = B$
+ $A inter B = A$

== Answer
+ let $x$ be an arbitrary element in $A union B$.
  - by definition of union, $(x in A) or (x in B)$.
  - if $(x in A)$, then since $forall x ((x in A) -> (x in B))$, $x$ is in $B$.
  - if $(x in B)$, that satisfies our case.
  - both cases show that for any $x$, $x in B$. therefore, we can say that
    $A union B = B$. #qed
+ let $x$ be an arbitrary element in $A inter B$.
  - by definition of intersection, $(x in A) and (x in B)$.
  - since both side of the $and$ operator are true, we can simplify and get
    $(x in A)$. #qed

= Problem 8
Let $A$, $B$, and $C$ be sets. Use the identity $A - B = A inter accent(B, -)$,
which holds for any sets $A$ and $B$, and the identities from Table 1 to show
that $(A - B) inter (B - C) inter (A - C) = emptyset$.

== Answer
$
  &(A - B) inter (B - C) inter (A - C) \
  &= (A inter accent(B, -)) inter (B inter accent(C, -)) inter (A inter accent(C, -)) & "(substitute using identity)" \
  &= (A inter A) inter (B inter accent(B, -)) inter (accent(C, -) inter accent(C, -)) &"(rearrange intersections)" \
  &= A inter emptyset inter accent(C, -) & "(simplify)" \
  &= emptyset & "(anything intersect with" emptyset "is" emptyset ")"
$

= Challenge 1
The *symmetric difference* of $A$ and $B$, denoted by $A xor B$, is the set
containing those elements in either $A$ or $B$, but not in both $A$ and $B$.

Determine whether the symmetric difference is associative; that is, if $A$, $B$,
and $C$ are sets, does it follow that $A xor (B xor C) = (A xor B) xor C$?

== Answer
By the definition of symmetric difference,
$A xor B = (A union B) - (A inter B)$. Therefore,
$
  A xor (B xor C) = (A union ((B union C) - (B inter C))) - (A inter ((B union C) - (B inter C)))
$
$
  (A xor B) xor C = (((A union B) - (A inter B)) union C) - (((A union B) - (A inter B)) inter C)
$
