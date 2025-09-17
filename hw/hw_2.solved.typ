#import "conf.typ": conf
#show: conf.with(id: "alj213", name: "Alex Jin", title: "hw_2", date: datetime(
  year: 2025,
  month: 9,
  day: 12,
))

= Problem 1
On an hypothetical island, there are three people: knights who always tell the
truth, knaves who always lie, and spies (called normals by Smullyan [Sm78]) who
can either lie or tell the truth. You encounter three people, $A$, $B$, and $C$.
You know one of these people is a knight, one is a knave, and one is a spy. Each
of the three people knows the type of person each of other two is. For each of
these situations, if possible, determine whether there is a unique solution and
determine who the knave, knight, and spy are. When there is no unique solution,
list all possible solutions or state that there are no solutions.

$A$ says "I am the knight," $B$ says "$A$ is not the knave," and $C$ says "$B$
is not the knave."

== Answer
There are $2^3 = 6$ possibilities for this situation, and we should to evaluate
each possibility.

Rules:
- Only one person per each character (knight, knave, or spy).
- Knights will always tell the truth.
- Knaves will always lie.
- Spies can either tell the truth or lie.

Let:
- $N equiv "knight"$
- $K equiv "knave"$
- $S equiv "spy"$

Statements:
- A: $A equiv N$
- B: $A equiv.not K$
- C: $B equiv.not K$

=== First case
Assume:
$
  A equiv N, B equiv K, C equiv S
$
If $A equiv N$, then $A$ will always tell the truth, and $A$'s statement
$A equiv N$ is true. If $B equiv K$, then the statement from $B$ that
$A equiv.not K$ should be negated, which becomes $A equiv K$, which is false,
causing a contradiction.

=== Second case
Assume:
$
  A equiv N, B equiv S, C equiv K
$
If $A equiv N$, then $A$'s statement $A equiv N$ is true. If $C equiv K$, then
$C$'s statement $B equiv.not K$ shall be negated, becoming $B equiv K$. However,
in this scenario, we assumed $C equiv K$, and knowing that there can only be one
person per role, it creates a contradiction.

=== Third case
Assume:
$
  A equiv K, B equiv N, C equiv S
$
If $A$ is the knave, then $A$'s statement $A equiv N$ shall be negated, becoming
$A equiv (K or S)$, which is true. Next, if $B equiv N$, then $B$'a statement
that $A equiv.not K$ should be truthful. However, according to the rules that
$B$ always tells the truth, and since $A equiv K$, $B$'s statement contradicts
with the rules.


=== Fourth case
Assume:
$
  A equiv K, B equiv S, C equiv N
$
If $A equiv K$, then $A$'s statement is true (as from above). Next, if
$C equiv N$, then $C$'s statement that $B equiv.not K$ shall be negated, turning
into $B equiv (K or S)$. This is also the case, since $B equiv S$. Finally,
because of $B equiv S$, $B$ can either lie or tell the truth. In this case,
$B$'s statement that $A equiv.not K$ is a lie. This case have no contradictions.

=== Fifth case
Assume:
$
  A equiv S, B equiv N, C equiv K
$
We can ignore $A$'s statement, since it can be either true or false. If
$B equiv N$, then $B$'s statement that $A equiv.not K$ is also true, since
$A equiv S$. Lastly, since $C equiv K$, $C$'s statement that $B equiv.not K$
should be false, and $B equiv K$. This is a contradiction with our assumption.

=== Sixth case
Assume:
$
  A equiv S, B equiv K, C equiv N
$
Since $B equiv K$, $B$'s statement that $A equiv.not K$ should be false, and it
should be $A equiv K$. This also creates a contradiction.

=== Conclusion
Since the fourth case is the only case where no contradictions can be found, we
can conclude that $A equiv K, B equiv S, C equiv N$.


= Problem 2
Four friends have been identified as suspects for an unauthorized access into a
computer system. They have made statements to the investigating authorities.
Alice said, "Carlos did it." John said, "I did not do it." Carlos said, "Diana
did it." Diana said, "Carlos lied when he said that I did it."

+ If the authorities also know that exactly one of the four suspects is telling
  the truth, who did it? Explain your reasoning.
+ If the authorities also know that exactly one is lying, who did it? Explain
  your reasoning.

== Answer
+ Since only one person is telling the truth, we consider four cases.
  + *Alice is telling the truth.*
    - Alice states that Carlos is the criminal.
    - John lies, implies John have committed the crime. *Contradicts with
      Alice's statement.*
  + *John is telling the truth.*
    - John states that he did not do it.
    - Alice lies, implies either Alice, Diana or Diana is the criminal.
    - Carlos lies, implies either Carlos, or Alice is the criminal.
    - Diana lies, implies Carlo is not lying. *Contradicts with assumption.*
  + *Carlos is telling the truth.*
    - Carlos states that Diana is the criminal.
    - Diana lies, implies Carlos is telling the truth.
    - Alice lies, implies that Alice, Diana, or John is the criminal.
    - John lies, implies that themselves is the criminal. *Contradicts with
      Carlo's statement.*
  + *Diana is telling the truth.*
    - Diana states that Carlos is lying.
    - Carlos lies, implying that either John, Alice, or Carlos is the criminal.
    - Alice lies, implies either Alice, Diana or John is the criminal.
    - John lies, implies themselves is the criminal. *John is the criminal, fits
      all four statements*.
+ Since only one person is lying, we consider four cases again.
  + *Alice is lying.*
    - Alice lies, implies either Alice, John, or Diana is the criminal.
    - John tells the truth, John is not the criminal.
    - Carlos tells the truth, Diana is the criminal.
    - Diana tells the truth, Carlos lied. *Contradicts with our assumption.*
  + *John is lying.*
    - John lies, implies themselves is the criminal.
    - Alice tells the truth, Carlos is the criminal. *Contradicts with John.*
  + *Carlos is lying.*
    - Carlos lies, implies either Alice, Carlos, or John is the criminal.
    - Alice tells the truth, Carlos is the criminal.
    - John tells the truth, implies either Alice, Carlos, or Diana is the
      criminal.
    - Diana tells the truth, Carlos lies. *No contradictions, Carlos is the
      criminal.*

= Problem 3
Show that $(p -> q) and (p -> r)$ and $p -> (q and r)$ are logically equivalent.

== Answer
$
  (p -> q) and (p -> r) & equiv p -> (q and r) \
  (not p or q) and (not p or r) & equiv p -> (q and r) wide && "(conditional equivalence)" \
  not p or (q and r) & equiv p -> (q and r) && "(distributive law)" \
  p -> (q and r) & equiv p -> (q and r) && "(conditional equivalence)"
$

= Problem 4
Show that $not p -> (q -> r)$ and $q -> (p or r)$ are logically equivalent.

== Answer
$
  not p -> (q -> r) & equiv q -> (p or r) \
      p or (q -> r) & equiv q -> (p or r) wide && "(conditional equivalence)" \
    p or not q or r & equiv q -> (p or r)      && "(same as above, expand group)" \
  not q or (p or r) & equiv q -> (p or r)      && "(rearrange, regroup)" \
      q -> (p or r) & equiv q -> (p or r)      && "(conditional equivalence)"
$

= Problem 5
Show that $(p or q) and (not p or r) -> (q or r)$ is a tautology.

== Answer
$
  & (p or q) and (not p or r) -> (q or r) \
  & equiv not ((p or q) and (not p or r)) or (q or r) && "(conditional equivalence)" \
  & equiv not (p or q) or not (not p or r) or (q or r) && "(demorgan's law)" \
  & equiv (not p and not q) or (p and not r) or q or r && "(demorgan's law)" \
  & equiv (q or (not p and not q)) or (r or (p and not r)) && "(rearrange and group)" \
  & equiv ((q or not p) and (q or not q)) or ((r or p) and (r or not r)) wide && "(distribute)" \
  & equiv (q or not p) or (r or p) && "(negation law, simplify)" \
  & equiv (p or not p) or q or r && "(simplify and group)"
$
Since there is already a tautology in this _or_ expression ($p or not p$), this
entire expression will be a tautology; because for the _or_ operator, if one
proposition is true, the outcome will be true.

= Problem 6
Translate these statements into English, where $R(x)$ is "x is a rabbit" and
$H(x)$ is "$x$ hops" and the domain consists of all animals.

+ $forall x thin [R(x) -> H(x)]$
+ $forall x thin [R(x) and H(x)]$
+ $exists x thin [R(x) -> H(x)]$
+ $exists x thin [R(x) and H(x)]$

== Answer
+ All animals that is a rabbit, hops.
+ All animals can be a rabbit and hop.
+ There exists an animal such that if it is a rabbit, then it hops.
+ There exists an anima; that are both a rabbit and also hops.

= Problem 7
Let $C(x)$ be the statement "$x$ has a cat," let $D(x)$ be the statement "$x$
has a dog," and let $F(x)$ be the statement "$x$ has a ferret." Express each of
these statements in terms of $C(x)$, $D(x)$, $F(x)$, quantifiers, and logical
connectives. Let the domain consist of all students in your class.

+ A student in your class has a cat, a dog, and a ferret.
+ All students in your class have a cat, a dog, or a ferret.
+ Some student in your class has a cat and a ferret, but not a dog.
+ No student in your class has a cat, a dog, and a ferret.
+ For each of the three animals, cats, dogs, and ferrets, there is a student in
  your class who has this animal as a pet.

== Answer
+ $exists x thin [C(x) and D(x) and F(x)]$
+ $forall x thin [C(x) or D(x) or F(x)]$
+ $exists x thin [(C(x) and F(x)) and not D(x)]$
+ $not exists x thin [C(x) and D(x) and F(x)]$
+ $exists x thin C(x) and exists y thin D(y) and exists z thin F(z)$

= Problem 8
Let $Q(x)$ be the statement "$x + 1 > 2x$." If the domain consists of all
integers, what are these truth values?

+ $Q(0)$
+ $Q(-1)$
+ $Q(1)$
+ $exists x thin Q(x)$
+ $forall x thin Q(x)$
+ $exists x thin not Q(x)$
+ $forall x thin not Q(x)$

== Answer
+ True; $1 > 0$
+ True; $0 > -2$
+ False; $2 gt.not 2$
+ True, see answer a or b
+ False, see answer c
+ True, see answer c
+ False, see answer a or b

= Problem 9
Translate in two ways each of these statements into logical expressions using
predicates, quantifiers, and logical connectives. First, let the domain consist
of the students in your class and second, let it consist of all people.

+ Everyone in your class has a cellular phone.
+ Somebody in your class has seen a foreign movie.
+ There is a person in your class who cannot swim.
+ All students in your class can solve quadratic equations.
+ Some student in your class does not want to be rich.

== Answer

Domains:
- $S equiv "students in my class"$
- $P equiv "all people"$

Quantifiers:
- $S(x) equiv$ "$x$ is a student in my class"
- $C(x) equiv$ "$x$ has a cellular phone"
- $M(x) equiv$ "$x$ has seen a foreign movie"
- $S(x) equiv$ "$x$ can swim"
- $Q(x) equiv$ "$x$ can solve quadratic equations"
- $R(x) equiv$ "$x$ want to be rich"

Expressions:
+ $forall x in S thin [C(x)]$ \
  $forall x in P thin [S(x) -> C(x)]$
+ $exists x in S thin [M(x)]$ \
  $exists x in P thin [S(x) and M(x)]$
+ $exists x in S thin [not S(x)]$ \
  $exists x in P thin [S(x) and not M(x)]$
+ $forall x in S thin [Q(x)]$ \
  $forall x in P thin [S(x) -> Q(x)]$
+ $exists x in S thin [not R(x)]$ \
  $exists x in P thin [S(x) and not R(x)]$

= Challenge 1

We now present a group of exercises that involve the logical operators _NAND_
and _NOR_. The proposition $p$ _NAND_ $q$ is true when either $p$ or $q$, or
both, are false; and it is false when both $p$ and $q$ are true. The proposition
$p$ _NOR_ $q$ is true when both $p$ and $q$ are false, and it is false
otherwise. The propositions $p$ _NAND_ $q$ and $p$ _NOR_ $q$ are denoted by
$p | q$ and $p arrow.b q$, respectively. (The operators $|$ and $arrow.b$ are
called the *Sheffer stroke* and the *Peirce arrow* after H. M. Shefer and C. S.
Peirce, respectively.)

Construct a truth table for the logical operator _NAND_.

== Answer
#table(
  columns: (auto, auto),
  table.header($p, q$, $p | q$),
  $bot bot$, $top$,
  $bot top$, $top$,
  $top bot$, $top$,
  $top top$, $bot$,
)

= Challenge 2
Show that ${|}$ is a functionally complete collection of logical operators.

== Answer

According to the logic table, $p | q$ (the _NAND_ operator) is logically
equivalent to $not (p and q)$.

Below is a comparison table showing that $p | q <=> not (p and q)$ is a tautology, therefore they are
logically equivalent.
#table(
  columns: (auto, auto, auto, auto),
  table.header($p, q$, $p and q$, $not (p and q)$, $p | q$),
  $bot bot$, $bot$, $top$, $top$,
  $bot top$, $bot$, $top$, $top$,
  $top bot$, $bot$, $top$, $top$,
  $top top$, $top$, $bot$, $bot$,
)

To use _NAND_ to create other logic operators:
- $not p equiv p | p$
- $p and q equiv (p | q) | (p | q)$
- $p or q equiv (p | p) | (q | q)$
