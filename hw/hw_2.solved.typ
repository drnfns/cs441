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

= Problem 3
Show that $(p -> q) and (p -> r)$ and $p -> (q and r)$ are logically equivalent.

== Answer

= Problem 4
Show that $not p -> (q -> r)$ and $q -> (p or r)$ are logically equivalent.

== Answer

= Problem 5
Show that $(p or q) and (not p or r) -> (q or r)$ is a tautology.

== Answer

= Problem 6
Translate these statements into English, where $R(x)$ is "x is a rabbit" and
$H(x)$ is "$x$ hops" and the domain consists of all animals.

+ $forall x thin [R(x) -> H(x)]$
+ $forall x thin [R(x) and H(x)]$
+ $exists x thin [R(x) -> H(x)]$
+ $exists x thin [R(x) and H(x)]$

== Answer

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

= Challenge 2
Show that ${|}$ is a functionally complete collection of logical operators.

