#import "conf.typ": conf
#show: conf.with(id: "Username:", name: "Name:", title: "rec_2", date: datetime(
  year: 2025,
  month: 9,
  day: 10,
))

= Problem 1
Translate these statements into logic using the provided propositions.

$v equiv "The message is scanned for viruses."$ \
$s equiv "The message is marked as spam."$ \
$k equiv "The message was sent from a known system."$ \
$b equiv "The sender is blocked."$

+ The message is scanned for viruses or marked as spam.
+ A message from a blocked sender goes scanned for viruses.
+ The sender is blocked and the message is scanned for viruses only if the message was sent from an unknown system.
+ If the message is sent from an unknown system, either the sender is blocked or the message is marked for spam. In both cases, it is scanned for viruses.

== Answer

= Problem 2
Prove the following by using *logical equivalences* (i.e., using direct manipulation). For each step, state which single logical equivalence was used.

+ $not (p -> not q) equiv (p and q)$
+ $p -> (q -> r) equiv (p and q) -> r$

== Answer

= Problem 3
Use the truth tables to:

+ Show that $p or (p and q) equiv p$
+ Show that $(p and q) -> r$ and $(p -> r) and (q -> r)$ are not logically equivalent

== Answer

= Problem 4
Let $M(x) equiv x$ _visits the Carnegie Mueseum_ and $A(x) equiv x$ _is an art student_. Let the domain of each be "all students at Pitt".

+ Translate the following statement into English. \
  $
    forall x thin [M(x) -> A(x)]
  $

+ Translate the following into predicate logic. \
  "Not all art students have visited the Carnegie Museum".

+ Explain why the statement "Some art students visit the Carnegie Museum" #underline[cannot] be translated as:
$
  exists x thin [A(x) -> M(x)]
$

== Answer

= Problem 5
Explain the following logical paradoxes. That is, explain why each one cannot cannot be assigned a specific value.

+ "The next statement is true. The previous statement is false."
+ "If this sentence is true, then all statements are true."
+ Define two propositional variables as $p equiv q "is false"$, and $q equiv p "is false"$.

== Answer